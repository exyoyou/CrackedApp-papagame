.class public final synthetic Lorg/hmwebrtc/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/SurfaceTextureHelper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/SurfaceTextureHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/i0;->b:Lorg/hmwebrtc/SurfaceTextureHelper;

    iput p2, p0, Lorg/hmwebrtc/i0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/i0;->b:Lorg/hmwebrtc/SurfaceTextureHelper;

    iget v1, p0, Lorg/hmwebrtc/i0;->c:I

    invoke-static {v0, v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->a(Lorg/hmwebrtc/SurfaceTextureHelper;I)V

    return-void
.end method
