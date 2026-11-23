.class Lcom/windmill/sdk/widget/BannerView_7002001$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/BannerView_7002001;->renderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/BannerView_7002001;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/BannerView_7002001;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/BannerView_7002001$1;->a:Lcom/windmill/sdk/widget/BannerView_7002001;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 2

    .line 1
    const-string v0, "BannerBaseView"

    .line 2
    .line 3
    const-string v1, "--------blurImage------onBitmapLoadFailed------getIconUrl------"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    const-string v0, "BannerBaseView"

    .line 2
    .line 3
    const-string v1, "--------blurImage------onBitmapLoaded------getIconUrl------"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001$1;->a:Lcom/windmill/sdk/widget/BannerView_7002001;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001$1;->a:Lcom/windmill/sdk/widget/BannerView_7002001;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 24
    .line 25
    const/high16 v1, 0x41c80000    # 25.0f

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001$1;->a:Lcom/windmill/sdk/widget/BannerView_7002001;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/windmill/sdk/widget/BannerBaseView;->blurImage:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
