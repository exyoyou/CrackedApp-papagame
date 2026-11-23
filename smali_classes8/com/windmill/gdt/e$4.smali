.class final Lcom/windmill/gdt/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/gdt/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gdt/e;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/e;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/e$4;->a:Lcom/windmill/gdt/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoDuration()J
    .locals 2

    iget-object v0, p0, Lcom/windmill/gdt/e$4;->a:Lcom/windmill/gdt/e;

    iget-object v0, v0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getVideoProgress()J
    .locals 2

    iget-object v0, p0, Lcom/windmill/gdt/e$4;->a:Lcom/windmill/gdt/e;

    iget-object v0, v0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
