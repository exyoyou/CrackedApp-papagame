.class final Lcom/windmill/sigmob/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sigmob/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/e;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/e;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/e$1;->a:Lcom/windmill/sigmob/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoDuration()J
    .locals 4

    iget-object v0, p0, Lcom/windmill/sigmob/e$1;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e$1;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getVideoProgress()J
    .locals 4

    iget-object v0, p0, Lcom/windmill/sigmob/e$1;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e$1;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getVideoCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method
