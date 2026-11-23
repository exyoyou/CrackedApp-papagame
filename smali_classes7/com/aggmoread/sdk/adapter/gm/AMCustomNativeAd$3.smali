.class Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

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
    .locals 1

    .line 1
    invoke-static {}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$300()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->resume()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
