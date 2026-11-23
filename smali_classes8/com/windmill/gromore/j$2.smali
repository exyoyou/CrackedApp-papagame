.class final Lcom/windmill/gromore/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/j;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/windmill/gromore/j;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/j;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/j$2;->b:Lcom/windmill/gromore/j;

    iput-object p2, p0, Lcom/windmill/gromore/j$2;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/windmill/gromore/j$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/gromore/j$2;->b:Lcom/windmill/gromore/j;

    iget-object v1, v1, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/windmill/gromore/j$2;->b:Lcom/windmill/gromore/j;

    iget-object v2, v2, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/windmill/gromore/j$2;->a:Landroid/view/ViewGroup;

    int-to-double v4, v0

    int-to-double v6, v1

    int-to-double v1, v2

    div-double/2addr v6, v1

    div-double/2addr v4, v6

    double-to-int v1, v4

    invoke-static {v3, v0, v1}, Lcom/windmill/sdk/utils/UIUtils;->setViewSize(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/windmill/gromore/j$2;->b:Lcom/windmill/gromore/j;

    iget-object v0, v0, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/windmill/gromore/j$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/windmill/gromore/j$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
