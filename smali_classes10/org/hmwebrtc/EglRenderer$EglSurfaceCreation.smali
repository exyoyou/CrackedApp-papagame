.class Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglSurfaceCreation"
.end annotation


# instance fields
.field private surface:Ljava/lang/Object;

.field final synthetic this$0:Lorg/hmwebrtc/EglRenderer;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/EglRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/EglRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;-><init>(Lorg/hmwebrtc/EglRenderer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->hasSurface()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 27
    .line 28
    instance-of v1, v0, Landroid/view/Surface;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroid/view/Surface;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Lorg/hmwebrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 51
    .line 52
    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Lorg/hmwebrtc/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 64
    .line 65
    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 70
    .line 71
    .line 72
    const/16 v0, 0xcf5

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "Invalid surface: "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    :goto_1
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    monitor-exit p0

    .line 108
    throw v0
.end method

.method public declared-synchronized setSurface(Ljava/lang/Object;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method
