.class Lcom/windmill/sdk/utils/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scheme",
            "url",
            "radio"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/windmill/sdk/utils/g$a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/windmill/sdk/utils/g$a;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/windmill/sdk/utils/g$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/windmill/sdk/utils/g$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/utils/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radio"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x64

    .line 7
    .line 8
    if-lt p1, v2, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/Random;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-ge v2, p1, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :catch_0
    :cond_2
    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/windmill/sdk/utils/g$a;->c:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/windmill/sdk/utils/g$a;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/windmill/sdk/point/PointEntityWind;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "688"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "click_url"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "scheme"

    .line 28
    .line 29
    iget-object v4, p0, Lcom/windmill/sdk/utils/g$a;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v3, "appid"

    .line 35
    .line 36
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const-string v0, "url"

    .line 50
    .line 51
    iget-object v3, p0, Lcom/windmill/sdk/utils/g$a;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    return-void
.end method
