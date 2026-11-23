.class final Lcom/windmill/toutiao/TouTiaoBannerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/toutiao/TouTiaoBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/TouTiaoBannerAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$3;->a:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$3;->a:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClosed()V

    return-void
.end method

.method public final onShow()V
    .locals 0

    return-void
.end method
