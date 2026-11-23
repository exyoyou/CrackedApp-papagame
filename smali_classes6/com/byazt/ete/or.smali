.class public Lcom/byazt/ete/or;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x243
    }
.end annotation


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field public static c:I

.field public static da:I

.field public static h:I

.field public static i:I

.field public static m:I

.field public static md:I

.field public static final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field public static nu:I

.field public static p:I

.field public static rh:I

.field public static sl:I

.field public static final sp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field public static t:I

.field public static tt:I

.field public static u:I

.field public static uj:I

.field public static ve:I

.field public static final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field public static yp:I

.field public static yv:Ljava/lang/String;

.field public static z:I


# instance fields
.field public final gr:I

.field public final gt:I

.field public final gu:I

.field public final my:I

.field public final qy:I

.field public final rl:I

.field public final zm:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    .line 28
    .line 29
    const-string v0, "\u5df2\u4e3a\u60a8\u5ef6\u8fdf\u5230\u5956\u52b1\u4e0b\u53d1\u540e\u518d\u64ad\u653e\u4e0b\u4e00\u4e2a"

    .line 30
    .line 31
    sput-object v0, Lcom/byazt/ete/or;->yv:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    sput v0, Lcom/byazt/ete/or;->p:I

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/byazt/ete/or;->md:I

    .line 38
    .line 39
    sput v0, Lcom/byazt/ete/or;->h:I

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "carousel_pos"

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/byazt/ete/or;->gr:I

    .line 12
    .line 13
    const-string v0, "insert_ad_control"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/byazt/ete/or;->my:I

    .line 21
    .line 22
    const-string v0, "refresh_ad_control"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/byazt/ete/or;->gt:I

    .line 29
    .line 30
    const-string v0, "refresh_ad_imp_max_time"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/byazt/ete/or;->gu:I

    .line 37
    .line 38
    const-string v0, "force_refresh_ad_control"

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/byazt/ete/or;->rl:I

    .line 45
    .line 46
    const-string v0, "web_refresh_control"

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/byazt/ete/or;->qy:I

    .line 53
    .line 54
    const-string v0, "carousel_tip_content"

    .line 55
    .line 56
    const-string v1, "\u79d2\u540e\u5c06\u7ee7\u7eed\u64ad\u653e\u4e0b\u4e00\u4e2a"

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/byazt/ete/or;->zm:Ljava/lang/String;

    .line 63
    .line 64
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->uj:I

    return v0
.end method

.method public static a(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/or;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "\u79d2\u540e\u5c06\u7ee7\u7eed\u64ad\u653e\u4e0b\u4e00\u4e2a"

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/or;->zm:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/byazt/ete/or;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    iget p0, p0, Lcom/byazt/ete/or;->my:I

    return p0
.end method

.method public static c(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    sget p0, Lcom/byazt/ete/or;->da:I

    return p0

    .line 71
    :cond_0
    sget p0, Lcom/byazt/ete/or;->sl:I

    return p0
.end method

.method public static c(Lcom/byazt/it/n;)V
    .locals 10

    :try_start_0
    const-string v0, "insert_ad_control"

    const/4 v1, 0x1

    .line 80
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->c:I

    const-string v0, "insert_ad_control_fs"

    .line 81
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->tt:I

    const-string v0, "insert_ad_req_num"

    const/4 v2, 0x3

    .line 82
    invoke-interface {p0, v0, v2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->ve:I

    const-string v0, "insert_ad_req_num_fs"

    const/4 v3, 0x2

    .line 83
    invoke-interface {p0, v0, v3}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->uj:I

    const-string v0, "insert_ad_toast_max_time"

    const/4 v4, 0x5

    .line 84
    invoke-interface {p0, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->i:I

    const-string v0, "insert_ad_tip_max_time"

    const/4 v4, 0x0

    .line 85
    invoke-interface {p0, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->da:I

    const-string v0, "insert_ad_tip_max_time_fs"

    .line 86
    invoke-interface {p0, v0, v2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->sl:I

    const-string v0, "refresh_ad_tip_max_time"

    .line 87
    invoke-interface {p0, v0, v2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->t:I

    const-string v0, "refresh_ad_tip_max_time_fs"

    .line 88
    invoke-interface {p0, v0, v2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->u:I

    const-string v0, "refresh_ad_control"

    .line 89
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->yp:I

    const-string v0, "refresh_ad_req_num"

    .line 90
    invoke-interface {p0, v0, v2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->z:I

    const-string v0, "force_refresh_ad_control"

    .line 91
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->m:I

    const-string v0, "force_refresh_ad_pause_over_time"

    const/16 v5, 0x1388

    .line 92
    invoke-interface {p0, v0, v5}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->nu:I

    const-string v0, "refresh_ad_reduce_time"

    .line 93
    invoke-interface {p0, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->rh:I

    const-string v0, "insert_ad_pt_show_time"

    const/4 v5, 0x0

    .line 94
    invoke-interface {p0, v0, v5}, Lcom/byazt/it/c;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ","

    if-eqz v0, :cond_1

    .line 95
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 96
    sget-object v7, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 99
    array-length v8, v7

    if-ne v8, v3, :cond_0

    new-array v8, v3, [I

    .line 100
    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    .line 101
    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v8, v1

    .line 102
    sget-object v7, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "insert_ad_vd_show_time"

    .line 103
    invoke-interface {p0, v0, v5}, Lcom/byazt/it/c;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 105
    sget-object v7, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 107
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 108
    array-length v8, v7

    if-ne v8, v3, :cond_2

    new-array v8, v3, [I

    .line 109
    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    .line 110
    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v8, v1

    .line 111
    sget-object v7, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "insert_ad_pt_show_time_fs"

    .line 112
    invoke-interface {p0, v0, v5}, Lcom/byazt/it/c;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 114
    sget-object v7, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 117
    array-length v8, v7

    if-ne v8, v3, :cond_4

    new-array v8, v3, [I

    .line 118
    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    .line 119
    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v8, v1

    .line 120
    sget-object v7, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v0, "insert_ad_vd_show_time_fs"

    .line 121
    invoke-interface {p0, v0, v5}, Lcom/byazt/it/c;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 122
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 123
    sget-object v5, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    array-length v7, v5

    if-ne v7, v3, :cond_6

    new-array v7, v3, [I

    .line 127
    aget-object v8, v5, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    .line 128
    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v7, v1

    .line 129
    sget-object v5, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v0, "refresh_ad_clickafter_tip_content"

    const-string v1, "\u5df2\u4e3a\u60a8\u5ef6\u8fdf\u5230\u5956\u52b1\u4e0b\u53d1\u540e\u518d\u64ad\u653e\u4e0b\u4e00\u4e2a"

    .line 130
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/ete/or;->yv:Ljava/lang/String;

    const-string v0, "refresh_ad_clickafter_tip_content_max_time"

    .line 131
    invoke-interface {p0, v0, v2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->p:I

    const-string v0, "refresh_ad_ifclick_swtich"

    .line 132
    invoke-interface {p0, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->md:I

    const-string v0, "refresh_ad_ifclick_swtich_fs"

    .line 133
    invoke-interface {p0, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/byazt/ete/or;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "app_common_config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_0
    const-string v0, "insert_ad_control"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    sput v0, Lcom/byazt/ete/or;->c:I

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    .line 4
    :cond_0
    sput v1, Lcom/byazt/ete/or;->c:I

    :cond_1
    const-string v0, "insert_ad_control_fs"

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 6
    sput v0, Lcom/byazt/ete/or;->tt:I

    if-ltz v0, :cond_2

    if-le v0, v1, :cond_3

    .line 7
    :cond_2
    sput v1, Lcom/byazt/ete/or;->tt:I

    :cond_3
    const-string v0, "insert_ad_req_num"

    const/4 v2, 0x3

    .line 8
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->ve:I

    const-string v0, "insert_ad_req_num_fs"

    const/4 v3, 0x2

    .line 9
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->uj:I

    const-string v0, "insert_ad_toast_max_time"

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->i:I

    const-string v0, "insert_ad_tip_max_time"

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->da:I

    const-string v0, "insert_ad_tip_max_time_fs"

    .line 12
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->sl:I

    const-string v0, "refresh_ad_tip_max_time"

    .line 13
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->t:I

    const-string v0, "refresh_ad_tip_max_time_fs"

    .line 14
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->u:I

    const-string v0, "refresh_ad_control"

    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 16
    sput v0, Lcom/byazt/ete/or;->yp:I

    if-ltz v0, :cond_4

    if-le v0, v1, :cond_5

    .line 17
    :cond_4
    sput v1, Lcom/byazt/ete/or;->yp:I

    :cond_5
    const-string v0, "refresh_ad_req_num"

    .line 18
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->z:I

    const-string v0, "force_refresh_ad_control"

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    sput v0, Lcom/byazt/ete/or;->m:I

    if-ltz v0, :cond_6

    if-le v0, v1, :cond_7

    .line 21
    :cond_6
    sput v1, Lcom/byazt/ete/or;->m:I

    :cond_7
    const-string v0, "force_refresh_ad_pause_over_time"

    const/16 v5, 0x1388

    .line 22
    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->nu:I

    const-string v0, "refresh_ad_reduce_time"

    .line 23
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->rh:I

    const-string v0, "insert_ad_pt_show_time"

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/16 v5, 0x1f4

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 26
    sget-object v6, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 28
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 29
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v3, :cond_8

    new-array v8, v3, [I

    .line 30
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v8, v4

    .line 31
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    aput v7, v8, v1

    .line 32
    sget-object v7, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 33
    :cond_9
    sget-object v0, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v0, "insert_ad_vd_show_time"

    .line 34
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_c

    .line 36
    sget-object v6, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    .line 37
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 38
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 39
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v3, :cond_b

    new-array v8, v3, [I

    .line 40
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v8, v4

    .line 41
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    aput v7, v8, v1

    .line 42
    sget-object v7, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 43
    :cond_c
    sget-object v0, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v0, "insert_ad_pt_show_time_fs"

    .line 44
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_f

    .line 46
    sget-object v6, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    .line 47
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_10

    .line 48
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 49
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v3, :cond_e

    new-array v8, v3, [I

    .line 50
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v8, v4

    .line 51
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    aput v7, v8, v1

    .line 52
    sget-object v7, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 53
    :cond_f
    sget-object v0, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v0, "insert_ad_vd_show_time_fs"

    .line 54
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_12

    .line 56
    sget-object v5, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    .line 57
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 58
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 59
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v3, :cond_11

    new-array v7, v3, [I

    .line 60
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v7, v4

    .line 61
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    aput v6, v7, v1

    .line 62
    sget-object v6, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 63
    :cond_12
    sget-object v0, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    filled-new-array {v4, v5}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v0, "reward_aggregation_config"

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v0, "refresh_ad_clickafter_tip_content"

    const-string v1, "\u5df2\u4e3a\u60a8\u5ef6\u8fdf\u5230\u5956\u52b1\u4e0b\u53d1\u540e\u518d\u64ad\u653e\u4e0b\u4e00\u4e2a"

    .line 65
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/ete/or;->yv:Ljava/lang/String;

    const-string v0, "refresh_ad_clickafter_tip_content_max_time"

    .line 66
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->p:I

    const-string v0, "refresh_ad_ifclick_swtich"

    .line 67
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/byazt/ete/or;->md:I

    const-string v0, "refresh_ad_ifclick_swtich_fs"

    .line 68
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/byazt/ete/or;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_14
    return-void
.end method

.method public static c()Z
    .locals 2

    .line 69
    sget v0, Lcom/byazt/ete/or;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(ILcom/byazt/ete/ic;)Z
    .locals 1

    .line 79
    invoke-static {p1}, Lcom/byazt/ete/or;->n(Lcom/byazt/ete/ic;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 p0, p0, 0x3e8

    invoke-static {p1}, Lcom/byazt/ete/or;->n(Lcom/byazt/ete/ic;)I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(ILcom/byazt/ete/ic;Z)Z
    .locals 1

    .line 77
    invoke-static {p1}, Lcom/byazt/ete/or;->n(Lcom/byazt/ete/ic;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 p0, p0, 0x3e8

    .line 78
    invoke-static {p1}, Lcom/byazt/ete/or;->n(Lcom/byazt/ete/ic;)I

    move-result p1

    invoke-static {p2}, Lcom/byazt/ete/or;->tt(Z)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p1, p2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/byazt/ete/ic;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 137
    sget p1, Lcom/byazt/ete/or;->yp:I

    if-eq p1, v1, :cond_0

    return v0

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/or;->tt(Lcom/byazt/ete/ic;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static c(ZI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 73
    sget-object p0, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 74
    aget v3, v2, v0

    if-lt p1, v3, :cond_0

    aget v2, v2, v1

    if-gt p1, v2, :cond_0

    return v1

    .line 75
    :cond_1
    sget-object p0, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 76
    aget v3, v2, v0

    if-lt p1, v3, :cond_2

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    return v1

    :cond_3
    return v0
.end method

.method public static c(ZLcom/byazt/ete/ic;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 136
    invoke-static {p1, p2}, Lcom/byazt/ete/or;->ve(Lcom/byazt/ete/ic;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;Z)Z

    move-result p0

    return p0
.end method

.method public static c(ZZI)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 72
    invoke-static {p1, p2}, Lcom/byazt/ete/or;->c(ZI)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/ete/or;->tt(ZI)Z

    move-result p0

    return p0
.end method

.method public static da()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->rh:I

    .line 2
    .line 3
    div-int/lit16 v0, v0, 0x3e8

    .line 4
    .line 5
    return v0
.end method

.method public static i()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->nu:I

    .line 2
    .line 3
    return v0
.end method

.method public static n()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->ve:I

    return v0
.end method

.method public static n(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/or;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/or;->gu:I

    return p0
.end method

.method public static sl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ete/or;->yv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sp()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->z:I

    return v0
.end method

.method private static sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->hq()Lcom/byazt/ete/or;

    move-result-object p0

    return-object p0
.end method

.method public static t()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/byazt/ete/or;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    iget p0, p0, Lcom/byazt/ete/or;->gt:I

    return p0
.end method

.method public static tt(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sget p0, Lcom/byazt/ete/or;->t:I

    return p0

    .line 3
    :cond_0
    sget p0, Lcom/byazt/ete/or;->u:I

    return p0
.end method

.method public static tt(Lcom/byazt/it/n;)V
    .locals 9

    :try_start_0
    const-string v0, "insert_ad_control"

    .line 8
    sget v1, Lcom/byazt/ete/or;->c:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "insert_ad_control_fs"

    .line 9
    sget v1, Lcom/byazt/ete/or;->tt:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "insert_ad_req_num"

    .line 10
    sget v1, Lcom/byazt/ete/or;->ve:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "insert_ad_req_num_fs"

    .line 11
    sget v1, Lcom/byazt/ete/or;->uj:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "insert_ad_toast_max_time"

    .line 12
    sget v1, Lcom/byazt/ete/or;->i:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "insert_ad_tip_max_time"

    .line 13
    sget v1, Lcom/byazt/ete/or;->da:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "insert_ad_tip_max_time_fs"

    .line 14
    sget v1, Lcom/byazt/ete/or;->sl:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_tip_max_time"

    .line 15
    sget v1, Lcom/byazt/ete/or;->t:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_tip_max_time_fs"

    .line 16
    sget v1, Lcom/byazt/ete/or;->u:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_control"

    .line 17
    sget v1, Lcom/byazt/ete/or;->yp:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_req_num"

    .line 18
    sget v1, Lcom/byazt/ete/or;->z:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "force_refresh_ad_control"

    .line 19
    sget v1, Lcom/byazt/ete/or;->m:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "force_refresh_ad_pause_over_time"

    .line 20
    sget v1, Lcom/byazt/ete/or;->nu:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_reduce_time"

    .line 21
    sget v1, Lcom/byazt/ete/or;->rh:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 22
    sget-object v0, Lcom/byazt/ete/or;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v1, :cond_2

    .line 23
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_0

    .line 25
    array-length v7, v6

    if-ne v7, v5, :cond_0

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v2

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "insert_ad_pt_show_time"

    .line 27
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    .line 28
    :cond_2
    sget-object v0, Lcom/byazt/ete/or;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_3

    .line 31
    array-length v7, v6

    if-ne v7, v5, :cond_3

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v2

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v0, "insert_ad_vd_show_time"

    .line 33
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    .line 34
    :cond_5
    sget-object v0, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_6

    .line 37
    array-length v7, v6

    if-ne v7, v5, :cond_6

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v2

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v0, "insert_ad_pt_show_time_fs"

    .line 39
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    .line 40
    :cond_8
    sget-object v0, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 41
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_9

    .line 43
    array-length v7, v6

    if-ne v7, v5, :cond_9

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v2

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v0, "insert_ad_vd_show_time_fs"

    .line 45
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    :cond_b
    const-string v0, "refresh_ad_ifclick_swtich_fs"

    .line 46
    sget v1, Lcom/byazt/ete/or;->h:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_ifclick_swtich"

    .line 47
    sget v1, Lcom/byazt/ete/or;->md:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "refresh_ad_clickafter_tip_content"

    .line 48
    sget-object v1, Lcom/byazt/ete/or;->yv:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "refresh_ad_clickafter_tip_content_max_time"

    .line 49
    sget v1, Lcom/byazt/ete/or;->p:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public static tt()Z
    .locals 2

    .line 1
    sget v0, Lcom/byazt/ete/or;->tt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 59
    sget p1, Lcom/byazt/ete/or;->m:I

    if-eq p1, v1, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/or;->ve(Lcom/byazt/ete/ic;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static tt(ZI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/byazt/ete/or;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 5
    aget v3, v2, v0

    if-lt p1, v3, :cond_0

    aget v2, v2, v1

    if-gt p1, v2, :cond_0

    return v1

    .line 6
    :cond_1
    sget-object p0, Lcom/byazt/ete/or;->sp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 7
    aget v3, v2, v0

    if-lt p1, v3, :cond_2

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    return v1

    :cond_3
    return v0
.end method

.method public static tt(ZLcom/byazt/ete/ic;Z)Z
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/byazt/ete/or;->c(ZLcom/byazt/ete/ic;Z)Z

    move-result p0

    if-nez p0, :cond_1

    .line 62
    invoke-static {p1, p2}, Lcom/byazt/ete/or;->c(Lcom/byazt/ete/ic;Z)Z

    move-result p0

    if-nez p0, :cond_1

    .line 63
    invoke-static {p1, p2}, Lcom/byazt/ete/or;->tt(Lcom/byazt/ete/ic;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static u()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->md:I

    .line 2
    .line 3
    return v0
.end method

.method public static uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/or;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/or;->gr:I

    return p0
.end method

.method public static uj()Z
    .locals 2

    .line 1
    sget v0, Lcom/byazt/ete/or;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static uj(Lcom/byazt/ete/ic;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Lcom/byazt/ete/or;->tt:I

    if-eq p1, v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/or;->c(Lcom/byazt/ete/ic;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static ve(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/or;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/or;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/or;->rl:I

    return p0
.end method

.method public static ve()Z
    .locals 2

    .line 1
    sget v0, Lcom/byazt/ete/or;->yp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static ve(Lcom/byazt/ete/ic;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Lcom/byazt/ete/or;->c:I

    if-eq p1, v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/or;->c(Lcom/byazt/ete/ic;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static x()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public static yp()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ete/or;->h:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public tt(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "carousel_pos"

    .line 50
    iget v1, p0, Lcom/byazt/ete/or;->gr:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "insert_ad_control"

    .line 51
    iget v1, p0, Lcom/byazt/ete/or;->my:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "refresh_ad_control"

    .line 52
    iget v1, p0, Lcom/byazt/ete/or;->gt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "refresh_ad_imp_max_time"

    .line 53
    iget v1, p0, Lcom/byazt/ete/or;->gu:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "force_refresh_ad_control"

    .line 54
    iget v1, p0, Lcom/byazt/ete/or;->rl:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "web_refresh_control"

    .line 55
    iget v1, p0, Lcom/byazt/ete/or;->qy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "carousel_tip_content"

    .line 56
    iget-object v1, p0, Lcom/byazt/ete/or;->zm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
