.class Lcom/sigmob/sdk/newInterstitial/i$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/newInterstitial/i$7;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/newInterstitial/i$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$7$1;->a:Lcom/sigmob/sdk/newInterstitial/i$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$7$1;->a:Lcom/sigmob/sdk/newInterstitial/i$7;

    iget-object v0, v0, Lcom/sigmob/sdk/newInterstitial/i$7;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/i;->g()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$7$1;->a:Lcom/sigmob/sdk/newInterstitial/i$7;

    iget-object v0, v0, Lcom/sigmob/sdk/newInterstitial/i$7;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->p(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "enforce"
        }
    .end annotation

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$7$1;->a:Lcom/sigmob/sdk/newInterstitial/i$7;

    iget-object p1, p1, Lcom/sigmob/sdk/newInterstitial/i$7;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g()V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$7$1;->a:Lcom/sigmob/sdk/newInterstitial/i$7;

    iget-object p1, p1, Lcom/sigmob/sdk/newInterstitial/i$7;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->p(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$7$1;->a:Lcom/sigmob/sdk/newInterstitial/i$7;

    iget-object v0, v0, Lcom/sigmob/sdk/newInterstitial/i$7;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/i;->f()V

    return-void
.end method
