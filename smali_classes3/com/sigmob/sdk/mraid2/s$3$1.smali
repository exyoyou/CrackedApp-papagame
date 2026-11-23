.class Lcom/sigmob/sdk/mraid2/s$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/s$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/s$3;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid2/s$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s$3$1;->a:Lcom/sigmob/sdk/mraid2/s$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$3$1;->a:Lcom/sigmob/sdk/mraid2/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->d(Lcom/sigmob/sdk/mraid2/s;)V

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

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$3$1;->a:Lcom/sigmob/sdk/mraid2/s$3;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->d(Lcom/sigmob/sdk/mraid2/s;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
