.class Lcom/windmill/baidu/BdNativeDrawAdData$AdShakeViewListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdShakeViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/baidu/BdNativeDrawAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdShakeViewListenerWrapper"
.end annotation


# instance fields
.field private final a:Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;


# direct methods
.method private constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeDrawAdData$AdShakeViewListenerWrapper;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/windmill/baidu/BdNativeDrawAdData$AdShakeViewListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeDrawAdData$AdShakeViewListenerWrapper;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;->onDismiss()V

    :cond_0
    return-void
.end method
