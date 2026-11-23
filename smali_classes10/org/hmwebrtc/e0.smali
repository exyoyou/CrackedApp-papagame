.class public final synthetic Lorg/hmwebrtc/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/ShareStreamingManager;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/ShareStreamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/e0;->b:Lorg/hmwebrtc/ShareStreamingManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/e0;->b:Lorg/hmwebrtc/ShareStreamingManager;

    invoke-static {v0}, Lorg/hmwebrtc/ShareStreamingManager;->a(Lorg/hmwebrtc/ShareStreamingManager;)V

    return-void
.end method
