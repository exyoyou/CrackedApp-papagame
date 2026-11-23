.class Lcom/windmill/sdk/widget/InterstitialView_4012003$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/InterstitialView_4012003;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/InterstitialView_4012003;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/InterstitialView_4012003;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialView_4012003$1;->a:Lcom/windmill/sdk/widget/InterstitialView_4012003;

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
    .locals 0

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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialView_4012003$1;->a:Lcom/windmill/sdk/widget/InterstitialView_4012003;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialView_4012003$1;->a:Lcom/windmill/sdk/widget/InterstitialView_4012003;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialView_4012003$1;->a:Lcom/windmill/sdk/widget/InterstitialView_4012003;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/high16 v1, 0x41c80000    # 25.0f

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialView_4012003$1;->a:Lcom/windmill/sdk/widget/InterstitialView_4012003;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
