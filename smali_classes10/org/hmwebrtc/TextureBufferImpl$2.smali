.class Lorg/hmwebrtc/TextureBufferImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/hmwebrtc/TextureBufferImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/TextureBufferImpl;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/TextureBufferImpl$2;->this$0:Lorg/hmwebrtc/TextureBufferImpl;

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

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/TextureBufferImpl$2;->this$0:Lorg/hmwebrtc/TextureBufferImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/hmwebrtc/TextureBufferImpl;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRelease(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/TextureBufferImpl$2;->this$0:Lorg/hmwebrtc/TextureBufferImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/hmwebrtc/TextureBufferImpl;->access$000(Lorg/hmwebrtc/TextureBufferImpl;)Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl$2;->this$0:Lorg/hmwebrtc/TextureBufferImpl;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;->onRelease(Lorg/hmwebrtc/TextureBufferImpl;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRetain(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/TextureBufferImpl$2;->this$0:Lorg/hmwebrtc/TextureBufferImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/hmwebrtc/TextureBufferImpl;->access$000(Lorg/hmwebrtc/TextureBufferImpl;)Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl$2;->this$0:Lorg/hmwebrtc/TextureBufferImpl;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;->onRetain(Lorg/hmwebrtc/TextureBufferImpl;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
