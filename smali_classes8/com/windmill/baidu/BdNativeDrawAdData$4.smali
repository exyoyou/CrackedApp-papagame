.class final Lcom/windmill/baidu/BdNativeDrawAdData$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/BdNativeDrawAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/BdNativeDrawAdData;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/BdNativeDrawAdData;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeDrawAdData$4;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/windmill/baidu/BdNativeDrawAdData$4;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-static {p1}, Lcom/windmill/baidu/BdNativeDrawAdData;->f(Lcom/windmill/baidu/BdNativeDrawAdData;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/baidu/BdNativeDrawAdData$4;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-static {p1}, Lcom/windmill/baidu/BdNativeDrawAdData;->f(Lcom/windmill/baidu/BdNativeDrawAdData;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    move-result-object p1

    const-string v0, "baidu"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
