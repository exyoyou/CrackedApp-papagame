.class Lcom/windmill/sdk/widget/BannerBaseView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/BannerBaseView;-><init>(Landroid/content/Context;Lcom/windmill/sdk/widget/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/a;

.field final synthetic b:Lcom/windmill/sdk/widget/BannerBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/BannerBaseView;Lcom/windmill/sdk/widget/a;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView$1;->b:Lcom/windmill/sdk/widget/BannerBaseView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/widget/BannerBaseView$1;->a:Lcom/windmill/sdk/widget/a;

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
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView$1;->a:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView$1;->a:Lcom/windmill/sdk/widget/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdClose()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView$1;->b:Lcom/windmill/sdk/widget/BannerBaseView;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->destroy()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
