.class Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->render()V
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
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "render runner"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/draw/AMDrawAd;->getView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/draw/AMDrawAd;->render()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
