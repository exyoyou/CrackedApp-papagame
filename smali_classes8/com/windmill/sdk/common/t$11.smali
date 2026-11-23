.class Lcom/windmill/sdk/common/t$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->a(Landroid/app/Activity;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Ljava/util/HashMap;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$options",
            "val$activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$11;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$11;->b:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/WindMillError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    invoke-static {v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/WindMillError;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "adAdapter",
            "adStrategy"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->s()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v2, v1, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;J)J

    .line 4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aF()V

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    const-string v3, "scene_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    iget-object v2, p0, Lcom/windmill/sdk/common/t$11;->a:Ljava/util/HashMap;

    const-string v3, "scene_desc"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/common/t$11;->a:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------getReadyAdapter--putAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    const-string v2, "vopen"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p2, v3}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    new-instance v2, Lcom/windmill/sdk/common/t$11$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/windmill/sdk/common/t$11$1;-><init>(Lcom/windmill/sdk/common/t$11;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    const/4 v2, 0x0

    const-string v3, "play"

    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    const-string v5, ""

    .line 15
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    invoke-static {p2, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/WindMillError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return v0
.end method
