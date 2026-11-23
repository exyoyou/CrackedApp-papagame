.class Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

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
    invoke-static {}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/AMAdInterface;->destroy()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$002(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;Lcom/aggmoread/sdk/client/draw/AMDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
