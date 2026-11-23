.class Lcom/windmill/sdk/common/s$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/windmill/sdk/common/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$error",
            "val$placementId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/s$7;->c:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/s$7;->a:Lcom/windmill/sdk/WindMillError;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/s$7;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/s$7;->c:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/common/s$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/s$7;->c:Lcom/windmill/sdk/common/s;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/common/s$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/common/s$7;->a:Lcom/windmill/sdk/WindMillError;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/common/s$7;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/windmill/sdk/common/s$7;->c:Lcom/windmill/sdk/common/s;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/windmill/sdk/common/s;->k(Lcom/windmill/sdk/common/s;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {v0, v1, v2, v3}, Lcom/windmill/sdk/common/s$a;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
