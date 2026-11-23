.class Lcom/windmill/sdk/widget/InterstitialBaseView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/InterstitialBaseView;->g()V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "sound_on"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "tobid_image_ad_sound_off"

    .line 28
    .line 29
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 39
    .line 40
    const-string v0, "sound_off"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, "tobid_image_ad_sound_on"

    .line 63
    .line 64
    invoke-static {p1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$10;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void
.end method
