.class Lcom/windmill/sdk/common/t$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/q;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$14;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic a(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V
    .locals 3

    .line 14
    instance-of v0, p2, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_0

    .line 15
    check-cast p2, Lcom/windmill/sdk/point/PointEntityWind;

    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "0"

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failure_reasons"

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/windmill/sdk/common/t$14;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/t$14;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 5
    instance-of v0, p1, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/windmill/sdk/common/t$14;Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/t$14;->a(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "WMJsonRequest------------onSuccess"

    .line 2
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$14;->a:Lcom/windmill/sdk/strategy/a;

    iget-object v0, v0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v3, Lcom/windmill/sdk/common/b0;

    invoke-direct {v3, p0}, Lcom/windmill/sdk/common/b0;-><init>(Lcom/windmill/sdk/common/t$14;)V

    const-string v4, "server_reward_response"

    invoke-static {v4, v1, v2, v0, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 4
    invoke-static {}, Lcom/windmill/sdk/common/r;->a()Lcom/windmill/sdk/common/r;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/czhj/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WMJsonRequest------------onErrorResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$14;->a:Lcom/windmill/sdk/strategy/a;

    iget-object v0, v0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v3, Lcom/windmill/sdk/common/c0;

    invoke-direct {v3, p0, p1}, Lcom/windmill/sdk/common/c0;-><init>(Lcom/windmill/sdk/common/t$14;Lcom/czhj/volley/VolleyError;)V

    const-string p1, "server_reward_response"

    invoke-static {p1, v1, v2, v0, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 13
    invoke-static {}, Lcom/windmill/sdk/common/r;->a()Lcom/windmill/sdk/common/r;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/common/t$14;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/common/r;->a(Ljava/lang/String;)V

    return-void
.end method
