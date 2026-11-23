.class public final synthetic Lorg/hmwebrtc/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoSink;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/VideoSource;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/VideoSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/c1;->b:Lorg/hmwebrtc/VideoSource;

    return-void
.end method


# virtual methods
.method public final onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/c1;->b:Lorg/hmwebrtc/VideoSource;

    invoke-static {v0, p1}, Lorg/hmwebrtc/VideoSource;->b(Lorg/hmwebrtc/VideoSource;Lorg/hmwebrtc/VideoFrame;)V

    return-void
.end method
