.class Lorg/hmwebrtc/VideoFileRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/VideoFileRenderer;-><init>(Ljava/lang/String;IILorg/hmwebrtc/EglBase$Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/VideoFileRenderer;

.field final synthetic val$sharedContext:Lorg/hmwebrtc/EglBase$Context;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/VideoFileRenderer;Lorg/hmwebrtc/EglBase$Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->this$0:Lorg/hmwebrtc/VideoFileRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->val$sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->this$0:Lorg/hmwebrtc/VideoFileRenderer;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->val$sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 4
    .line 5
    sget-object v2, Lorg/hmwebrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/hmwebrtc/h;->d(Lorg/hmwebrtc/EglBase$Context;[I)Lorg/hmwebrtc/EglBase;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lorg/hmwebrtc/VideoFileRenderer;->access$002(Lorg/hmwebrtc/VideoFileRenderer;Lorg/hmwebrtc/EglBase;)Lorg/hmwebrtc/EglBase;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->this$0:Lorg/hmwebrtc/VideoFileRenderer;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/hmwebrtc/VideoFileRenderer;->access$000(Lorg/hmwebrtc/VideoFileRenderer;)Lorg/hmwebrtc/EglBase;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->createDummyPbufferSurface()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->this$0:Lorg/hmwebrtc/VideoFileRenderer;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/hmwebrtc/VideoFileRenderer;->access$000(Lorg/hmwebrtc/VideoFileRenderer;)Lorg/hmwebrtc/EglBase;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/hmwebrtc/VideoFileRenderer$1;->this$0:Lorg/hmwebrtc/VideoFileRenderer;

    .line 33
    .line 34
    new-instance v1, Lorg/hmwebrtc/YuvConverter;

    .line 35
    .line 36
    invoke-direct {v1}, Lorg/hmwebrtc/YuvConverter;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lorg/hmwebrtc/VideoFileRenderer;->access$102(Lorg/hmwebrtc/VideoFileRenderer;Lorg/hmwebrtc/YuvConverter;)Lorg/hmwebrtc/YuvConverter;

    .line 40
    .line 41
    .line 42
    return-void
.end method
