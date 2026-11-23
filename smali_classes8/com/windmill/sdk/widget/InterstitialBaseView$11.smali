.class Lcom/windmill/sdk/widget/InterstitialBaseView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/InterstitialBaseView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/InterstitialBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    const-string p1, "InterstitialBaseView"

    .line 2
    .line 3
    const-string v0, "----------onADClicked----------"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdClick()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "error"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "----------onADError----------"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "InterstitialBaseView"

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {v0, v1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->destroy()V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public onADExposed(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    const-string p1, "InterstitialBaseView"

    .line 2
    .line 3
    const-string v0, "----------onADExposed----------"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$11;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdShow()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "view",
            "width",
            "height"
        }
    .end annotation

    .line 1
    const-string p1, "InterstitialBaseView"

    .line 2
    .line 3
    const-string p2, "----------onRenderSuccess----------"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
