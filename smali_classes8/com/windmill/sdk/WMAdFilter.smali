.class public Lcom/windmill/sdk/WMAdFilter;
.super Lcom/windmill/sdk/models/WMFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/models/WMFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public and()Lcom/windmill/sdk/WMAdFilter;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic and()Lcom/windmill/sdk/models/WMFilter;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/windmill/sdk/WMAdFilter;->and()Lcom/windmill/sdk/WMAdFilter;

    move-result-object v0

    return-object v0
.end method

.method public doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;)Lcom/windmill/sdk/WindMillError;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterData"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/models/WMFilter;->stack:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/windmill/sdk/models/WMFilter;->doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;Ljava/util/List;)Lcom/windmill/sdk/WindMillError;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;
    .locals 0
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/models/WMFilter;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WMAdFilter;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;
    .locals 0
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/models/WMFilter;->greaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic greaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WMAdFilter;->greaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;
    .locals 0
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/models/WMFilter;->greaterThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic greaterThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WMAdFilter;->greaterThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;

    move-result-object p1

    return-object p1
.end method

.method public in(Ljava/lang/String;Ljava/util/List;)Lcom/windmill/sdk/WMAdFilter;
    .locals 0
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
            "Lcom/windmill/sdk/WMAdFilter;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/models/WMFilter;->in(Ljava/lang/String;Ljava/util/List;)Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic in(Ljava/lang/String;Ljava/util/List;)Lcom/windmill/sdk/models/WMFilter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "values"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WMAdFilter;->in(Ljava/lang/String;Ljava/util/List;)Lcom/windmill/sdk/WMAdFilter;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;
    .locals 0
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/models/WMFilter;->lessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic lessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WMAdFilter;->lessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;

    move-result-object p1

    return-object p1
.end method

.method public lessThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;
    .locals 0
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/models/WMFilter;->lessThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic lessThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WMFilter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WMAdFilter;->lessThanEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/WMAdFilter;

    move-result-object p1

    return-object p1
.end method

.method public or()Lcom/windmill/sdk/WMAdFilter;
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/windmill/sdk/models/WMFilter;->or()Lcom/windmill/sdk/models/WMFilter;

    return-object p0
.end method

.method public bridge synthetic or()Lcom/windmill/sdk/models/WMFilter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/WMAdFilter;->or()Lcom/windmill/sdk/WMAdFilter;

    move-result-object v0

    return-object v0
.end method
