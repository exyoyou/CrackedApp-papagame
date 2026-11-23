.class public Lcom/byazt/aas/md;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x15d
    }
.end annotation


# direct methods
.method public static c(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .line 96
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 98
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ogz/sl;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 1

    .line 93
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 95
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ogz/sl;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 82
    new-instance v0, Lcom/byazt/dj/tt$c;

    invoke-direct {v0, p0}, Lcom/byazt/dj/tt$c;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 83
    invoke-virtual {v0, p0}, Lcom/byazt/dj/tt$c;->ve(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    const/16 v1, 0x140

    .line 84
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    const/16 v1, 0x280

    .line 85
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Lcom/byazt/dj/tt$c;->tt(Z)Lcom/byazt/dj/tt$c;

    move-result-object v0

    const-string v1, "defaultUser"

    .line 87
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->a(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->uj(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p0}, Lcom/byazt/dj/tt$c;->c(Z)Lcom/byazt/dj/tt$c;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;
    .locals 13

    .line 69
    new-instance v0, Lcom/byazt/dj/tt;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcom/byazt/dj/tt$c;

    invoke-direct {p1, v0}, Lcom/byazt/dj/tt$c;-><init>(Lcom/byazt/dj/tt;)V

    .line 71
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->x()F

    move-result v1

    .line 72
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->i()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_1

    .line 73
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 74
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->sp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    :cond_1
    cmpl-float v0, v1, v3

    if-gtz v0, :cond_2

    cmpl-float v0, v2, v3

    if-lez v0, :cond_5

    .line 75
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v0

    .line 76
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v3

    .line 77
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 78
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    cmpl-float v6, v1, v2

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    const-wide v7, 0x3ff4cccccccccccdL    # 1.3

    if-eqz v6, :cond_4

    if-lez v3, :cond_5

    float-to-double v9, v1

    int-to-double v11, v4

    mul-double v11, v11, v7

    cmpl-double v0, v9, v11

    if-lez v0, :cond_5

    int-to-float v1, v4

    int-to-float v2, v5

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    float-to-double v9, v2

    int-to-double v11, v4

    mul-double v11, v11, v7

    cmpl-double v0, v9, v11

    if-lez v0, :cond_5

    int-to-float v1, v5

    int-to-float v2, v4

    .line 79
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 81
    new-instance v0, Lcom/byazt/ete/ve;

    invoke-virtual {p1}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/aas/md;->tt(Lcom/byazt/dj/tt;)Lcom/byazt/dj/tt$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/byazt/dj/tt$c;->sp(I)Lcom/byazt/dj/tt$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/byazt/ete/ve;-><init>(Lcom/byazt/dj/tt;)V

    return-object v0
.end method

.method public static c(ILjava/lang/String;)Lcom/byazt/dj/tt;
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/byazt/aas/md;->c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Lcom/byazt/dj/tt$c;->sp(I)Lcom/byazt/dj/tt$c;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILjava/lang/String;FFLcom/byazt/ete/ic;)Lcom/byazt/dj/tt;
    .locals 0

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p4}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object p4

    .line 60
    :goto_0
    invoke-static {p4}, Lcom/byazt/aas/md;->c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object p4

    .line 61
    invoke-virtual {p4, p1}, Lcom/byazt/dj/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p0}, Lcom/byazt/dj/tt$c;->sp(I)Lcom/byazt/dj/tt$c;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p3}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    move-result-object p0

    .line 64
    invoke-virtual {p0, p2}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/dj/tt;
    .locals 7

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/byazt/dj/tt$c;

    invoke-direct {p0, p1}, Lcom/byazt/dj/tt$c;-><init>(Ljava/lang/String;)V

    const-string p1, "mAdId"

    .line 3
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mCreativeId"

    .line 4
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->tt(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mExt"

    .line 5
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->ve(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mCodeId"

    .line 6
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mUserData"

    .line 7
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->i(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mIsAutoPlay"

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->c(Z)Lcom/byazt/dj/tt$c;

    const-string p1, "mImgAcceptedWidth"

    const/16 v3, 0x280

    .line 9
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v3, "mImgAcceptedHeight"

    const/16 v4, 0x140

    .line 10
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 11
    invoke-virtual {p0, v3}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    .line 12
    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mExpressViewAcceptedWidth"

    const-wide/16 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string p1, "mExpressViewAcceptedHeight"

    .line 14
    invoke-virtual {v1, p1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    const-string p1, "mSupportDeepLink"

    .line 17
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->tt(Z)Lcom/byazt/dj/tt$c;

    const-string p1, "mAdCount"

    .line 18
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->ve(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mMediaExtra"

    .line 19
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->n(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mUserID"

    .line 20
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->a(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mOrientation"

    const/4 v2, 0x2

    .line 21
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->uj(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mAdType"

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->sp(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mNativeAdType"

    .line 23
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->n(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mExternalABVid"

    .line 24
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/aas/nb;->yp(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->c([I)Lcom/byazt/dj/tt$c;

    const-string p1, "mAdLoadSeq"

    .line 25
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->a(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mPrimeRit"

    .line 26
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->sp(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mBidAdm"

    .line 27
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->x(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    const-string p1, "mRewardAmount"

    .line 28
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->x(I)Lcom/byazt/dj/tt$c;

    const-string p1, "mRewardName"

    .line 29
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->da(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 30
    invoke-virtual {p0}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/byazt/dj/tt;)Lorg/json/JSONObject;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byazt/aas/md;->c(Lcom/byazt/dj/tt;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/byazt/dj/tt;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mAdId"

    .line 32
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mCreativeId"

    .line 33
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mExt"

    .line 34
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mCodeId"

    .line 35
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mUserData"

    .line 36
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mIsAutoPlay"

    .line 37
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->n()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "mImgAcceptedWidth"

    .line 38
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mImgAcceptedHeight"

    .line 39
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->sp()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mExpressViewAcceptedWidth"

    .line 40
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->x()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mExpressViewAcceptedHeight"

    .line 41
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->i()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mSupportDeepLink"

    .line 42
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->da()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "mSupportRenderControl"

    .line 43
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->sl()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    sget p1, Lcom/byazt/omf/p;->uj:I

    const/16 v1, 0x170c

    if-lt p1, v1, :cond_0

    const-string p1, "mSupportIconStyle"

    .line 45
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->yv()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "mAdCount"

    .line 46
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->t()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mMediaExtra"

    .line 47
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mUserID"

    .line 48
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->yp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mOrientation"

    .line 49
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->z()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mAdType"

    .line 50
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->gt()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mNativeAdType"

    .line 51
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->m()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mExternalABVid"

    .line 52
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->nu()[I

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/aas/nb;->c([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mAdLoadSeq"

    .line 53
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->rh()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mPrimeRit"

    .line 54
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->my()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mBidAdm"

    .line 55
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mRewardAmount"

    .line 56
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->zm()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mRewardName"

    .line 57
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->gr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .line 90
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 92
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ogz/sl;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final tt(Lcom/byazt/dj/tt;)Lcom/byazt/dj/tt$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dj/tt$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/dj/tt$c;-><init>(Lcom/byazt/dj/tt;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
