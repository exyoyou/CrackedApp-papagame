.class public final synthetic Lorg/hmwebrtc/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/VideoFileRenderer;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/VideoFileRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/x0;->b:Lorg/hmwebrtc/VideoFileRenderer;

    iput-object p2, p0, Lorg/hmwebrtc/x0;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/x0;->b:Lorg/hmwebrtc/VideoFileRenderer;

    iget-object v1, p0, Lorg/hmwebrtc/x0;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lorg/hmwebrtc/VideoFileRenderer;->b(Lorg/hmwebrtc/VideoFileRenderer;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
