.class final Lcom/windmill/toutiao/h$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/h;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field final synthetic b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field final synthetic c:Lcom/windmill/toutiao/h;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/h;Lcom/bytedance/sdk/openadsdk/TTAdDislike;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/h$7;->c:Lcom/windmill/toutiao/h;

    iput-object p2, p0, Lcom/windmill/toutiao/h$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    iput-object p3, p0, Lcom/windmill/toutiao/h$7;->b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/windmill/toutiao/h$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->showDislikeDialog()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/windmill/toutiao/h$7;->b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-eqz p1, :cond_1

    const-string v0, "csj"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method
