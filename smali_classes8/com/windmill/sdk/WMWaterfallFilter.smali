.class public Lcom/windmill/sdk/WMWaterfallFilter;
.super Lcom/windmill/sdk/models/WMFilter;
.source "SourceFile"


# instance fields
.field public placementID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementID"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/models/WMFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/WMWaterfallFilter;->placementID:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;)Lcom/windmill/sdk/WindMillError;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterData"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/WMWaterfallFilter;->placementID:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/windmill/sdk/models/WaterfallFilterData;->getPlacementId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v2}, Lcom/windmill/sdk/models/WMFilter;->doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;Ljava/util/List;)Lcom/windmill/sdk/WindMillError;

    .line 45
    .line 46
    .line 47
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    return-object v0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-object v0
.end method
