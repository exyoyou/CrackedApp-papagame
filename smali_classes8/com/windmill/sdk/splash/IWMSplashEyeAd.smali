.class public interface abstract Lcom/windmill/sdk/splash/IWMSplashEyeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getSplashView()Landroid/view/View;
.end method

.method public abstract getSuggestedSize(Landroid/content/Context;)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract onFinished()V
.end method

.method public abstract show(Landroid/content/Context;Landroid/graphics/Rect;Lcom/windmill/sdk/splash/WMSplashEyeAdListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "rect",
            "splashEyeAdListener"
        }
    .end annotation
.end method
