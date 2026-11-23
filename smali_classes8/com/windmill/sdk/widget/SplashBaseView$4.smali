.class Lcom/windmill/sdk/widget/SplashBaseView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashBaseView;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/SplashBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashBaseView;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SplashBaseView"

    const-string v1, "----------onFinish----------"

    .line 12
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdClose()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->b(Lcom/windmill/sdk/widget/SplashBaseView;)V

    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->destroy()V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->destroy()V

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------onTick----------:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashBaseView"

    invoke-static {v1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p2, p1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8df3\u8fc7\uff5c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "\uff5c"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 5
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x21

    .line 7
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    iget-object p2, p2, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 9
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    iget-object p2, p2, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipText:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$4;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->b(Lcom/windmill/sdk/widget/SplashBaseView;)V

    return-void
.end method
