.class public final synthetic Lorg/hmwebrtc/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/SurfaceTextureHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/h0;->b:Lorg/hmwebrtc/SurfaceTextureHelper;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/h0;->b:Lorg/hmwebrtc/SurfaceTextureHelper;

    invoke-static {v0, p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->e(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
