.class Lcom/windmill/sdk/common/p$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/windmill/sdk/common/p;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/p;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nativeADDataList"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/p$14;->b:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/p$14;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/p$14;->b:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/p;->d(Lcom/windmill/sdk/common/p;)Lcom/windmill/sdk/common/p$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/p$14;->b:Lcom/windmill/sdk/common/p;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/common/p;->d(Lcom/windmill/sdk/common/p;)Lcom/windmill/sdk/common/p$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/common/p$14;->a:Ljava/util/List;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/common/p$14;->b:Lcom/windmill/sdk/common/p;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/windmill/sdk/common/p;->e(Lcom/windmill/sdk/common/p;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/common/p$a;->onVideoAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
