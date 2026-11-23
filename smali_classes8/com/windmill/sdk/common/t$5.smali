.class Lcom/windmill/sdk/common/t$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$5;->a:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$5;->a:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->j(Lcom/windmill/sdk/common/t;)Lcom/windmill/sdk/common/t$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/t$5;->a:Lcom/windmill/sdk/common/t;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->j(Lcom/windmill/sdk/common/t;)Lcom/windmill/sdk/common/t$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/common/t$5;->a:Lcom/windmill/sdk/common/t;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/windmill/sdk/common/t$b;->onVideoAdClicked(Lcom/windmill/sdk/models/AdInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
