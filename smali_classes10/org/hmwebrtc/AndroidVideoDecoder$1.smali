.class Lorg/hmwebrtc/AndroidVideoDecoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/AndroidVideoDecoder;->initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/AndroidVideoDecoder;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/AndroidVideoDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$1;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$1;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$000(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$1;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->startListening(Lorg/hmwebrtc/VideoSink;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
