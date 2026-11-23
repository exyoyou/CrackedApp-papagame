.class Lorg/hmwebrtc/DirectSurfaceVideoDecoder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reformat(Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$3;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDestroy(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    return-void
.end method

.method public onRelease(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    return-void
.end method

.method public onRetain(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    return-void
.end method
