.class Lcom/windmill/sdk/common/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillError;

.field final synthetic b:Lcom/windmill/sdk/common/p;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/WindMillError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$error"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/p$2;->b:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/p$2;->a:Lcom/windmill/sdk/WindMillError;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/p$2;->b:Lcom/windmill/sdk/common/p;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/p$2;->b:Lcom/windmill/sdk/common/p;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;I)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/common/p$2;->b:Lcom/windmill/sdk/common/p;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/windmill/sdk/common/p;->d(Lcom/windmill/sdk/common/p;)Lcom/windmill/sdk/common/p$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/windmill/sdk/common/p$2;->a:Lcom/windmill/sdk/WindMillError;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/windmill/sdk/common/p$2;->b:Lcom/windmill/sdk/common/p;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/windmill/sdk/common/p;->e(Lcom/windmill/sdk/common/p;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/common/p$a;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
