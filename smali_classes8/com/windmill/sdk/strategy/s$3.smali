.class Lcom/windmill/sdk/strategy/s$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/base/WMAdapterError;

.field final synthetic c:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$strategy",
            "val$error"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$3;->c:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/strategy/s$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/strategy/s$3;->b:Lcom/windmill/sdk/base/WMAdapterError;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointEntityBase"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$3;->c:Lcom/windmill/sdk/strategy/s;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "0"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setHb_response(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->m()D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setCurrency_coefficient(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->l()Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExchange_rate(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$3;->b:Lcom/windmill/sdk/base/WMAdapterError;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$3;->b:Lcom/windmill/sdk/base/WMAdapterError;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "error_code"

    .line 73
    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$3;->b:Lcom/windmill/sdk/base/WMAdapterError;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "error_message"

    .line 84
    .line 85
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method
