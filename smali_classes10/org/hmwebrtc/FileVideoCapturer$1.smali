.class Lorg/hmwebrtc/FileVideoCapturer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/FileVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/FileVideoCapturer;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/FileVideoCapturer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/FileVideoCapturer$1;->this$0:Lorg/hmwebrtc/FileVideoCapturer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/FileVideoCapturer$1;->this$0:Lorg/hmwebrtc/FileVideoCapturer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/FileVideoCapturer;->tick()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
