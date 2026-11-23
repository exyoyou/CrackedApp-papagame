.class public final synthetic Lorg/hmwebrtc/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/SurfaceTextureHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/k0;->b:Lorg/hmwebrtc/SurfaceTextureHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/k0;->b:Lorg/hmwebrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->b(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    return-void
.end method
