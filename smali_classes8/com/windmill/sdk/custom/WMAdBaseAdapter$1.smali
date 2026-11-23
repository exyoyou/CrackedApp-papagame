.class Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/s$a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/sdk/strategy/a;

.field final synthetic e:Lcom/windmill/sdk/models/AdInfo;

.field final synthetic f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/s$a;Landroid/content/Context;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/AdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$biddingListener",
            "val$context",
            "val$options",
            "val$adStrategy",
            "val$adInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->a:Lcom/windmill/sdk/strategy/s$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->c:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->e:Lcom/windmill/sdk/models/AdInfo;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/windmill/sdk/custom/b;->a(Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->a:Lcom/windmill/sdk/strategy/s$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->e:Lcom/windmill/sdk/models/AdInfo;

    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    invoke-static {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    invoke-static {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    new-instance v3, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->a:Lcom/windmill/sdk/strategy/s$a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->b:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->c:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->a:Lcom/windmill/sdk/strategy/s$a;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->e:Lcom/windmill/sdk/models/AdInfo;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    .line 40
    .line 41
    invoke-interface {v1, v2, v3, v0}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->a:Lcom/windmill/sdk/strategy/s$a;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->e:Lcom/windmill/sdk/models/AdInfo;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    const-string v4, "bidding token is null"

    .line 53
    .line 54
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->f:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;->d:Lcom/windmill/sdk/strategy/a;

    .line 74
    .line 75
    new-instance v3, Lcom/windmill/sdk/base/WMAdapterError;

    .line 76
    .line 77
    sget-object v4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const-string v5, "loadBidding init fail"

    .line 84
    .line 85
    invoke-direct {v3, v4, v5}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1, v2, v3}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method
