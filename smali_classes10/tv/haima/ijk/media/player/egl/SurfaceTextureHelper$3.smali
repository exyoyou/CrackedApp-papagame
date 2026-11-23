.class Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Setting listener to "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 12
    .line 13
    invoke-static {v1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$300(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 21
    .line 22
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$300(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$402(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Ltv/haima/ijk/media/player/egl/VideoSink;)Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$302(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Ltv/haima/ijk/media/player/egl/VideoSink;)Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 36
    .line 37
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$500(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 44
    .line 45
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$600(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$502(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Z)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
