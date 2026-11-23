.class Lcom/windmill/baidu/BdNativeAdData$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdShakeViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/h;->getInteractionWidgetView(IIILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;

.field final synthetic b:Lcom/windmill/baidu/h;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/h;Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeAdData$7;->b:Lcom/windmill/baidu/h;

    iput-object p2, p0, Lcom/windmill/baidu/BdNativeAdData$7;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$7;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;->onDismiss()V

    :cond_0
    return-void
.end method
