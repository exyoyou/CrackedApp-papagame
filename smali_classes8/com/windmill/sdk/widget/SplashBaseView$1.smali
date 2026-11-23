.class Lcom/windmill/sdk/widget/SplashBaseView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashBaseView;-><init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/a;

.field final synthetic b:Lcom/windmill/sdk/widget/SplashBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashBaseView;Lcom/windmill/sdk/widget/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$baseControl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->b:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->a:Lcom/windmill/sdk/widget/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->b:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->a(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->b:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->a(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/d;->c()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->b:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->a(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/d;->d()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->a:Lcom/windmill/sdk/widget/a;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->a:Lcom/windmill/sdk/widget/a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdClose()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->b:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->destroy()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$1;->a:Lcom/windmill/sdk/widget/a;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->destroy()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method
