.class public final synthetic Lorg/hmwebrtc/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/VideoFrame$I420Buffer;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/VideoFrame$I420Buffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/v;->b:Lorg/hmwebrtc/VideoFrame$I420Buffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/v;->b:Lorg/hmwebrtc/VideoFrame$I420Buffer;

    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->release()V

    return-void
.end method
