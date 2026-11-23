.class Lcom/windmill/sdk/common/t$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$hasAdShow"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$9;->b:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/windmill/sdk/common/t$9;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/common/t$9;->b:Lcom/windmill/sdk/common/t;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "---StartPlay onVideoAdPlayStart getActivity "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/windmill/sdk/common/t$9;->b:Lcom/windmill/sdk/common/t;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->j(Lcom/windmill/sdk/common/t;)Lcom/windmill/sdk/common/t$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/windmill/sdk/common/t$9;->b:Lcom/windmill/sdk/common/t;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->j(Lcom/windmill/sdk/common/t;)Lcom/windmill/sdk/common/t$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/windmill/sdk/common/t$9;->b:Lcom/windmill/sdk/common/t;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/windmill/sdk/common/t$9;->a:Z

    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/common/t$b;->onVideoAdPlayStart(Lcom/windmill/sdk/models/AdInfo;Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
