.class public final synthetic Lorg/webrtc/haima/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/HmCameraWrapper;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/HmCameraWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/e;->b:Lorg/webrtc/haima/HmCameraWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/e;->b:Lorg/webrtc/haima/HmCameraWrapper;

    invoke-static {v0}, Lorg/webrtc/haima/HmCameraWrapper;->c(Lorg/webrtc/haima/HmCameraWrapper;)V

    return-void
.end method
