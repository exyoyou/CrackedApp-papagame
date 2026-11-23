.class Lcom/windmill/baidu/BdNativeAdData2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdDislikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/i;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;


# virtual methods
.method public onDislikeClick()V
    .locals 4

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData2$3;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-eqz v0, :cond_0

    const-string v1, "baidu"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onDislikeItemClick(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/windmill/baidu/BdNativeAdData2$3;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-eqz p1, :cond_0

    const-string v0, "baidu"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onDislikeWindowClose()V
    .locals 0

    return-void
.end method

.method public onDislikeWindowShow()V
    .locals 0

    return-void
.end method
