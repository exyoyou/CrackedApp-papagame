.class public final synthetic Lorg/hmwebrtc/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/TextureBufferImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/n0;->b:Lorg/hmwebrtc/TextureBufferImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/n0;->b:Lorg/hmwebrtc/TextureBufferImpl;

    invoke-static {v0}, Lorg/hmwebrtc/TextureBufferImpl;->b(Lorg/hmwebrtc/TextureBufferImpl;)Lorg/hmwebrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
