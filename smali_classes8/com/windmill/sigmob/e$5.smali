.class final Lcom/windmill/sigmob/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/e;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field final synthetic b:Lcom/windmill/sigmob/e;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/e;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/e$5;->b:Lcom/windmill/sigmob/e;

    iput-object p2, p0, Lcom/windmill/sigmob/e$5;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$5;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onCancel()V

    return-void
.end method

.method public final onSelected(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$5;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onShow()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$5;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onShow()V

    return-void
.end method
