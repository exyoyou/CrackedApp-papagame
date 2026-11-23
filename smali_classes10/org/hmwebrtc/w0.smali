.class public final synthetic Lorg/hmwebrtc/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/VideoFileRenderer;

.field public final synthetic c:Lorg/hmwebrtc/VideoFrame$I420Buffer;

.field public final synthetic d:Lorg/hmwebrtc/VideoFrame;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/VideoFileRenderer;Lorg/hmwebrtc/VideoFrame$I420Buffer;Lorg/hmwebrtc/VideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/w0;->b:Lorg/hmwebrtc/VideoFileRenderer;

    iput-object p2, p0, Lorg/hmwebrtc/w0;->c:Lorg/hmwebrtc/VideoFrame$I420Buffer;

    iput-object p3, p0, Lorg/hmwebrtc/w0;->d:Lorg/hmwebrtc/VideoFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/w0;->b:Lorg/hmwebrtc/VideoFileRenderer;

    iget-object v1, p0, Lorg/hmwebrtc/w0;->c:Lorg/hmwebrtc/VideoFrame$I420Buffer;

    iget-object v2, p0, Lorg/hmwebrtc/w0;->d:Lorg/hmwebrtc/VideoFrame;

    invoke-static {v0, v1, v2}, Lorg/hmwebrtc/VideoFileRenderer;->c(Lorg/hmwebrtc/VideoFileRenderer;Lorg/hmwebrtc/VideoFrame$I420Buffer;Lorg/hmwebrtc/VideoFrame;)V

    return-void
.end method
