.class public Lcom/windmill/sdk/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "h"

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "obj"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.windmill.sdk.hmov.tool.CoreManager"

    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getFieldValue"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 22
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    .line 23
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeGetFieldValue: error = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.windmill.sdk.hmov.tool.CoreManager"

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getFieldValue"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/util/List;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    .line 20
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appId"
        }
    .end annotation

    const-string v0, "init: error = "

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "com.windmill.sdk.hmov.tool.Main"

    .line 3
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "init"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 4
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v3

    .line 5
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sput-boolean v3, Lcom/windmill/sdk/utils/h;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    sput-boolean v2, Lcom/windmill/sdk/utils/h;->b:Z

    :goto_0
    :try_start_1
    const-string p0, "com.windmill.sdk.hmov.tool.c"

    .line 9
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 11
    array-length p1, p0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v4, p0, v2

    .line 12
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 14
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V
    .locals 1

    .line 27
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Ljava/util/List;

    invoke-static {p1, p0}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, p0}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 30
    :cond_1
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 31
    check-cast p0, Ljava/util/List;

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/windmill/sdk/utils/h;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 34
    invoke-static {p1, p2}, Lcom/windmill/sdk/utils/h;->a(Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p0}, Lcom/windmill/sdk/utils/h;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 36
    invoke-static {p0, p2}, Lcom/windmill/sdk/utils/h;->a(Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V

    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "obj",
            "adStrategy"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 25
    sget-boolean v0, Lcom/windmill/sdk/utils/h;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/utils/j;->a()Lcom/windmill/sdk/utils/j;

    move-result-object v0

    new-instance v1, Lcom/windmill/sdk/utils/o;

    invoke-direct {v1, p1, p0, p2}, Lcom/windmill/sdk/utils/o;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "adStrategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/windmill/sdk/strategy/a;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 38
    :cond_0
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWind;

    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWind;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ad_price"

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_placement_id(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setHb(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_channel_id(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setCurrency(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ba()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setAb_test(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setBidding_type(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setSubType(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aE()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setExperiment_id(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aV()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_appid(Ljava/lang/String;)V

    :cond_2
    const-string p1, "appid"

    .line 53
    sget-object v1, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pkgname"

    .line 55
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "clientversion"

    .line 56
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "688"

    .line 57
    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p1, "load"

    .line 58
    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 60
    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setIs_mediation(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/windmill/sdk/utils/h;->b:Z

    return v0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 6
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 8
    invoke-virtual {v5}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 10
    invoke-virtual {v5, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object v5, v8

    :goto_1
    if-nez v5, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    const-class v8, Ljava/util/Date;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 14
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    check-cast v5, Ljava/util/Date;

    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    :goto_2
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method
