.class Lcom/windmill/sdk/common/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/j$5;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/j$5;->a:Lcom/windmill/sdk/strategy/a;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/j$5;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/common/j$5;->a:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/common/j$5;->b:Lcom/windmill/sdk/common/j;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/common/j$5;->b:Lcom/windmill/sdk/common/j;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/common/j$5;->b:Lcom/windmill/sdk/common/j;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/windmill/sdk/common/j$b;->onAdShown(Lcom/windmill/sdk/models/AdInfo;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
