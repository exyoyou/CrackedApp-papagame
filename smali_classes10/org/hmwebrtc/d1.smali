.class public final synthetic Lorg/hmwebrtc/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/VideoSource;

.field public final synthetic c:Lorg/hmwebrtc/VideoFrame;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/VideoSource;Lorg/hmwebrtc/VideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/d1;->b:Lorg/hmwebrtc/VideoSource;

    iput-object p2, p0, Lorg/hmwebrtc/d1;->c:Lorg/hmwebrtc/VideoFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/d1;->b:Lorg/hmwebrtc/VideoSource;

    iget-object v1, p0, Lorg/hmwebrtc/d1;->c:Lorg/hmwebrtc/VideoFrame;

    invoke-static {v0, v1}, Lorg/hmwebrtc/VideoSource;->c(Lorg/hmwebrtc/VideoSource;Lorg/hmwebrtc/VideoFrame;)V

    return-void
.end method
