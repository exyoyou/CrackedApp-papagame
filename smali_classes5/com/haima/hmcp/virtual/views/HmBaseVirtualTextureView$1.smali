.class Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "drawSurface createDrawThread"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$002(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$100(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$100(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$300(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "drawSurface surfaceDestroyed"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$002(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$100(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$102(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit p1

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
