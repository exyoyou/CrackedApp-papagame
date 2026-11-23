.class public abstract Lcom/windmill/sdk/models/WMFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/WMFilter$WMFilterItem;
    }
.end annotation


# static fields
.field public static final C2S:Ljava/lang/String; = "c2s"

.field public static final KEY_ADN_PLACEMENT_ID:Ljava/lang/String; = "adnPlacementId"

.field public static final KEY_ADN_PLACEMENT_RENDER_TYPE:Ljava/lang/String; = "adnPlacementRenderType"

.field public static final KEY_ADN_PLACEMENT_SUB_TYPE:Ljava/lang/String; = "adnPlacementSubType"

.field public static final KEY_BIDDING_TYPE:Ljava/lang/String; = "biddingType"

.field public static final KEY_CHANNEL_ID:Ljava/lang/String; = "channelId"

.field public static final KEY_E_CPM:Ljava/lang/String; = "eCpm"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final OP_EQUAL:I = 0x1

.field public static final OP_GT:I = 0x6

.field public static final OP_GTE:I = 0x4

.field public static final OP_IN:I = 0x2

.field public static final OP_LT:I = 0x7

.field public static final OP_LTE:I = 0x5

.field private static final OP_NOT:I = 0x3

.field public static final S2S:Ljava/lang/String; = "s2s"


# instance fields
.field protected stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/WMFilter$WMFilterItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method private operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "op"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v1, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, v1, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->key:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p2, v1, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    .line 40
    .line 41
    iput p3, v1, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->op:I

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-object p0
.end method


# virtual methods
.method public and()Lcom/windmill/sdk/models/WMFilter;
    .locals 0

    return-object p0
.end method

.method public abstract doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;)Lcom/windmill/sdk/WindMillError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterData"
        }
    .end annotation
.end method

.method public doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;Ljava/util/List;)Lcom/windmill/sdk/WindMillError;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filterData",
            "group"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/WaterfallFilterData;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/WMFilter$WMFilterItem;",
            ">;)",
            "Lcom/windmill/sdk/WindMillError;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_12

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "eCpm"

    if-eqz v2, :cond_c

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;

    .line 4
    iget-object v4, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->key:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v5, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    if-nez v5, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v4}, Lcom/windmill/sdk/models/WaterfallFilterData;->getWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    iget v6, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->op:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v6, v9, :cond_8

    const/4 v3, 0x2

    if-eq v6, v3, :cond_7

    const/4 v3, 0x4

    if-eq v6, v3, :cond_6

    const/4 v3, 0x5

    if-eq v6, v3, :cond_4

    const/4 v3, 0x6

    if-eq v6, v3, :cond_3

    const/4 v3, 0x7

    if-eq v6, v3, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 8
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v3, v11, v7

    if-lez v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v7, v5, v2

    if-gez v7, :cond_5

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 10
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v7, v5, v2

    if-lez v7, :cond_5

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 12
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v3, v11, v7

    if-lez v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v7, v5, v2

    if-gtz v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    move v10, v9

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 14
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v7, v5, v2

    if-ltz v7, :cond_5

    goto :goto_1

    .line 15
    :cond_7
    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_a

    .line 16
    check-cast v2, Ljava/util/Collection;

    .line 17
    invoke-interface {v2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2

    .line 18
    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 19
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 20
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v3, v11, v7

    if-lez v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/windmill/sdk/models/WMFilter;->doubleValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 21
    :cond_9
    iget-object v2, v2, Lcom/windmill/sdk/models/WMFilter$WMFilterItem;->value:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    :cond_a
    :goto_2
    if-nez v10, :cond_b

    return-object v0

    .line 22
    :cond_b
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :cond_c
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 24
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_PRICE_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p1

    :cond_d
    const-string p1, "adnPlacementId"

    .line 25
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 26
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_SOURCE_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p1

    :cond_e
    const-string p1, "biddingType"

    .line 27
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 28
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_BIDDING_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p1

    :cond_f
    const-string p1, "adnPlacementSubType"

    .line 29
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "adnPlacementRenderType"

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_10
    const-string p1, "channelId"

    .line 30
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 31
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p1

    .line 32
    :cond_11
    :goto_3
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_TYPE_FILTER:Lcom/windmill/sdk/WindMillError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_12
    return-object v0
.end method

.method doubleValue(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/models/WMFilter;->operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public greaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/models/WMFilter;->operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public greaterThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/models/WMFilter;->operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public in(Ljava/lang/String;Ljava/util/List;)Lcom/windmill/sdk/models/WMFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/WMFilter;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/models/WMFilter;->operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public lessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/models/WMFilter;->operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public lessThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/models/WMFilter;->operator(Ljava/lang/String;Ljava/lang/Object;I)Lcom/windmill/sdk/models/WMFilter;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public or()Lcom/windmill/sdk/models/WMFilter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public printFilterInfo(Lcom/windmill/sdk/models/WaterfallFilterData;ILcom/windmill/sdk/WindMillError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filterData",
            "i",
            "windMillError"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "-----------WaterfallFilterData-----------"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/windmill/sdk/models/WaterfallFilterData;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ":"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return-void
.end method
