.class public Lcom/byazt/oi/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x78d,
        0x36
    }
.end annotation


# static fields
.field public static c:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation
.end field

.field public static tt:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation
.end field

.field public static uj:Ljava/lang/String; = "KEY_LOAD_SEQ_TIME"

.field public static ve:Ljava/lang/String; = "KEY_LOAD_SEQ"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/bp/c;->u()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "gm_tt_ad_mediation_sdk_sp"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/byazt/oi/ve;->uj:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->getLong(Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    new-instance v5, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/util/Date;

    .line 33
    .line 34
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v1}, Lcom/byazt/oi/ve;->c(Ljava/util/Date;Ljava/util/Date;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sget-object v2, Lcom/byazt/oi/ve;->uj:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v2, v3, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/byazt/oi/ve;->ve:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-interface {v0, v2, v3}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v3, v2

    .line 57
    :goto_0
    sget-object v1, Lcom/byazt/oi/ve;->ve:Ljava/lang/String;

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    invoke-interface {v0, v1, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    return v3
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;II)Lcom/byazt/nbs/da;
    .locals 1

    .line 22
    new-instance v0, Lcom/byazt/nbs/da;

    invoke-direct {v0}, Lcom/byazt/nbs/da;-><init>()V

    .line 23
    invoke-virtual {v0, p1}, Lcom/byazt/nbs/da;->ve(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Lcom/byazt/nbs/da;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 25
    invoke-virtual {v0, p0}, Lcom/byazt/nbs/da;->da(I)V

    const-string p0, "0"

    .line 26
    invoke-virtual {v0, p0}, Lcom/byazt/nbs/da;->sp(Ljava/lang/String;)V

    const-string p0, "1"

    .line 27
    invoke-virtual {v0, p0}, Lcom/byazt/nbs/da;->tt(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Lcom/byazt/nbs/da;->sl(I)V

    .line 29
    invoke-virtual {v0, p3}, Lcom/byazt/nbs/da;->t(I)V

    const/4 p0, 0x3

    .line 30
    invoke-virtual {v0, p0}, Lcom/byazt/nbs/da;->i(I)V

    const-string p0, "%1$s%2$sAdapter"

    .line 31
    invoke-virtual {v0, p0}, Lcom/byazt/nbs/da;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 5
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "com.bytedance.msdk.adapter."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/byazt/yl/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/oi/ve;->c:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/oi/ve;->ve()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->to()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const v0, 0xc8321

    .line 40
    iget v1, p0, Lcom/byazt/pp/c;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "error_adn:%1$s no ads\uff0cplease check ad network"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/byazt/pp/uj;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/byazt/pp/c;->ve:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    aput-object p0, v0, p1

    const-string p0, "test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/byazt/pp/uj;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->to()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p0, p2}, Lcom/byazt/oi/ve;->tt(Ljava/lang/String;Lcom/byazt/yl/ve;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p2

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->my()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "fill_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/byazt/pp/uj;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/yl/ve;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->to()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/byazt/oi/ve;->tt(Ljava/lang/String;Lcom/byazt/yl/ve;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "test_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/byazt/pp/uj;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/byazt/vx/h;->c(Ljava/util/List;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/vx/h;->c(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static c(Lcom/byazt/nbs/da;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_3

    .line 9
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/vq/c;->a()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {p0}, Lcom/byazt/oi/ve;->tt(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/px/uj;->getAdaperManagerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    move-result-object v2

    const/16 v3, 0x1f4a

    .line 14
    invoke-virtual {v2, v3, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    const/16 v1, 0x2170

    .line 15
    invoke-virtual {v2, v1, p0}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    const p0, -0x5f5e0f3

    const/16 v1, 0x2025

    .line 16
    invoke-virtual {v2, p0, v1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    const p0, -0x5f5e0f1

    .line 17
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 18
    invoke-virtual {v2}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "TTMediationSDK"

    const-string v0, "load ad check class loader is null "

    .line 19
    invoke-static {p0, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x5

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_2

    return p1

    :cond_2
    return v3
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static tt(Lcom/byazt/nbs/da;)Ljava/lang/String;
    .locals 15

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "mintegral"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v11, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "unity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v11, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "baidu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "gdt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v11, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "ks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v11, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "sigmob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "pangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v11, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "klevin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    :goto_0
    packed-switch v11, :pswitch_data_0

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    const-string v1, "com.bytedance.msdk.adapter.mintegral.Mintegral"

    goto :goto_1

    :pswitch_1
    const-string v1, "com.bytedance.msdk.adapter.unity.Unity"

    goto :goto_1

    :pswitch_2
    const-string v1, "com.bytedance.msdk.adapter.baidu.Baidu"

    goto :goto_1

    :pswitch_3
    const-string v1, "com.bytedance.msdk.adapter.gdt.Gdt"

    goto :goto_1

    :pswitch_4
    const-string v1, "com.bytedance.msdk.adapter.ks.Ks"

    goto :goto_1

    :pswitch_5
    const-string v1, "com.bytedance.msdk.adapter.xiaomi.Xiaomi"

    goto :goto_1

    :pswitch_6
    const-string v1, "com.bytedance.msdk.adapter.sigmob.Sigmob"

    goto :goto_1

    :pswitch_7
    const-string v1, "com.bytedance.msdk.adapter.pangle_csjm.Pangle"

    goto :goto_1

    :pswitch_8
    const-string v1, "com.bytedance.msdk.adapter.klevin.Klevin"

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->a()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->u()I

    move-result p0

    const-string v11, "DrawLoader"

    const-string v12, "BannerLoader"

    const-string v13, "FullVideoLoader"

    const-string v14, "InterstitialLoader"

    packed-switch p0, :pswitch_data_1

    :pswitch_9
    goto :goto_6

    :pswitch_a
    if-ne v2, v10, :cond_a

    goto :goto_4

    :cond_a
    if-ne v2, v9, :cond_f

    goto :goto_3

    :goto_2
    :pswitch_b
    move-object v0, v11

    goto :goto_6

    :goto_3
    :pswitch_c
    move-object v0, v13

    goto :goto_6

    :pswitch_d
    const-string v0, "RewardLoader"

    if-ne v2, v5, :cond_b

    goto :goto_6

    :cond_b
    if-ne v2, v4, :cond_c

    goto :goto_3

    :cond_c
    if-ne v2, v3, :cond_f

    goto :goto_4

    :pswitch_e
    const-string v0, "NativeLoader"

    if-ne v2, v7, :cond_d

    goto :goto_6

    :cond_d
    if-ne v2, v6, :cond_e

    goto :goto_2

    :cond_e
    if-ne v2, v8, :cond_f

    goto :goto_5

    :pswitch_f
    const-string v0, "SplashLoader"

    goto :goto_6

    :goto_4
    :pswitch_10
    move-object v0, v14

    goto :goto_6

    :goto_5
    :pswitch_11
    move-object v0, v12

    .line 7
    :cond_f
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4347d989 -> :sswitch_8
        -0x3b56c19d -> :sswitch_7
        -0x35ca9371 -> :sswitch_6
        -0x2d450b45 -> :sswitch_5
        0xd68 -> :sswitch_4
        0x18f37 -> :sswitch_3
        0x592ae1b -> :sswitch_2
        0x6a45775 -> :sswitch_1
        0x431e1919 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static tt()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/byazt/oi/ve;->tt:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/oi/ve;->uj()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static tt(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method private static tt(Ljava/lang/String;Lcom/byazt/yl/ve;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v2

    const/16 v3, 0x65

    invoke-virtual {v1, p0, v2, v3}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdType()I

    move-result p1

    invoke-virtual {v2, p0, p1}, Lcom/byazt/qe/ve;->tt(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->qp()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->qp()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->md()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->md()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static uj()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/oi/ve$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/oi/ve$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/oi/ve;->tt:Ljava/util/Comparator;

    .line 7
    .line 8
    return-object v0
.end method

.method public static ve()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/oi/ve$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/oi/ve$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/oi/ve;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    return-object v0
.end method
