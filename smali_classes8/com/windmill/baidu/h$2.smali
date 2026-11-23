.class final Lcom/windmill/baidu/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/h;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

.field final synthetic b:Lcom/windmill/baidu/h;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/h;Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/h$2;->b:Lcom/windmill/baidu/h;

    iput-object p2, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reportVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportVideoReplay()V

    return-void
.end method

.method public final reportVideoError(JII)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportPlayError(I)V

    return-void
.end method

.method public final reportVideoPause(J)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    const/4 p2, 0x0

    sget-object v0, Lcom/baidu/mobads/sdk/api/NativeResponse$VideoReason;->OTHER_REASON:Lcom/baidu/mobads/sdk/api/NativeResponse$VideoReason;

    invoke-interface {p1, p2, v0}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportVideoPause(ILcom/baidu/mobads/sdk/api/NativeResponse$VideoReason;)V

    return-void
.end method

.method public final reportVideoPreload()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportPlayerReady()V

    return-void
.end method

.method public final reportVideoResume(J)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportVideoResume(I)V

    return-void
.end method

.method public final reportVideoStart()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportVideoShow()V

    iget-object v0, p0, Lcom/windmill/baidu/h$2;->a:Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;->reportVideoStart(Z)V

    return-void
.end method
