.class public final synthetic Lorg/hmwebrtc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/EglRenderer;

.field public final synthetic c:Lorg/hmwebrtc/RendererCommon$GlDrawer;

.field public final synthetic d:Lorg/hmwebrtc/EglRenderer$FrameListener;

.field public final synthetic e:F

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/RendererCommon$GlDrawer;Lorg/hmwebrtc/EglRenderer$FrameListener;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/s;->b:Lorg/hmwebrtc/EglRenderer;

    iput-object p2, p0, Lorg/hmwebrtc/s;->c:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    iput-object p3, p0, Lorg/hmwebrtc/s;->d:Lorg/hmwebrtc/EglRenderer$FrameListener;

    iput p4, p0, Lorg/hmwebrtc/s;->e:F

    iput-boolean p5, p0, Lorg/hmwebrtc/s;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/s;->b:Lorg/hmwebrtc/EglRenderer;

    iget-object v1, p0, Lorg/hmwebrtc/s;->c:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    iget-object v2, p0, Lorg/hmwebrtc/s;->d:Lorg/hmwebrtc/EglRenderer$FrameListener;

    iget v3, p0, Lorg/hmwebrtc/s;->e:F

    iget-boolean v4, p0, Lorg/hmwebrtc/s;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/hmwebrtc/EglRenderer;->j(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/RendererCommon$GlDrawer;Lorg/hmwebrtc/EglRenderer$FrameListener;FZ)V

    return-void
.end method
