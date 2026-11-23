.class public final Lcom/windmill/gdt/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/splash/IWMSplashEyeAd;


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final getSplashView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSuggestedSize(Landroid/content/Context;)[I
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onFinished()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final show(Landroid/content/Context;Landroid/graphics/Rect;Lcom/windmill/sdk/splash/WMSplashEyeAdListener;)V
    .locals 0

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
