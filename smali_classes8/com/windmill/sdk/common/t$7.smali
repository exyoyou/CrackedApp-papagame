.class Lcom/windmill/sdk/common/t$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/q;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/common/q;

.field final synthetic c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic d:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/common/q;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adStrategy",
            "val$item",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$7;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$7;->b:Lcom/windmill/sdk/common/q;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/t$7;->c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic a(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V
    .locals 3

    .line 18
    instance-of v0, p2, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_0

    .line 19
    check-cast p2, Lcom/windmill/sdk/point/PointEntityWind;

    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "0"

    .line 22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failure_reasons"

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/windmill/sdk/common/t$7;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/t$7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 7
    instance-of v0, p1, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/windmill/sdk/common/t$7;Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/t$7;->a(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "WMJsonRequest------------onSuccess"

    .line 2
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$7;->a:Lcom/windmill/sdk/strategy/a;

    iget-object v0, v0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v3, Lcom/windmill/sdk/common/d0;

    invoke-direct {v3, p0}, Lcom/windmill/sdk/common/d0;-><init>(Lcom/windmill/sdk/common/t$7;)V

    const-string v4, "server_show_response"

    invoke-static {v4, v1, v2, v0, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->b:Lcom/windmill/sdk/common/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/q;->a(I)V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->k(Lcom/windmill/sdk/common/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    iget-object v1, p0, Lcom/windmill/sdk/common/t$7;->b:Lcom/windmill/sdk/common/q;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$7;->a:Lcom/windmill/sdk/strategy/a;

    iget-object v3, p0, Lcom/windmill/sdk/common/t$7;->c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    invoke-static {v0, v1, v2, v3}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/common/q;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    :cond_0
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

    .line 13
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

    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$7;->a:Lcom/windmill/sdk/strategy/a;

    iget-object v0, v0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v3, Lcom/windmill/sdk/common/e0;

    invoke-direct {v3, p0, p1}, Lcom/windmill/sdk/common/e0;-><init>(Lcom/windmill/sdk/common/t$7;Lcom/czhj/volley/VolleyError;)V

    const-string p1, "server_show_response"

    invoke-static {p1, v1, v2, v0, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/common/t$7;->b:Lcom/windmill/sdk/common/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/common/q;->a(I)V

    .line 16
    iget-object p1, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    invoke-static {p1}, Lcom/windmill/sdk/common/t;->k(Lcom/windmill/sdk/common/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/windmill/sdk/common/t$7;->d:Lcom/windmill/sdk/common/t;

    iget-object v0, p0, Lcom/windmill/sdk/common/t$7;->b:Lcom/windmill/sdk/common/q;

    iget-object v1, p0, Lcom/windmill/sdk/common/t$7;->a:Lcom/windmill/sdk/strategy/a;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$7;->c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    invoke-static {p1, v0, v1, v2}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/common/q;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    :cond_0
    return-void
.end method
