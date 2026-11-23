.class Lcom/windmill/baidu/BdExpressAdData$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/b;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field final synthetic b:Lcom/windmill/baidu/b;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/b;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdExpressAdData$4;->b:Lcom/windmill/baidu/b;

    iput-object p2, p0, Lcom/windmill/baidu/BdExpressAdData$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose(Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 3

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "---------------onAdClose-----------"

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/baidu/BdExpressAdData$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-eqz p1, :cond_0

    const-string v0, "baidu"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
