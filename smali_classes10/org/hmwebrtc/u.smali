.class public final synthetic Lorg/hmwebrtc/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/HardwareVideoEncoder;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/HardwareVideoEncoder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/u;->b:Lorg/hmwebrtc/HardwareVideoEncoder;

    iput p2, p0, Lorg/hmwebrtc/u;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/u;->b:Lorg/hmwebrtc/HardwareVideoEncoder;

    iget v1, p0, Lorg/hmwebrtc/u;->c:I

    invoke-static {v0, v1}, Lorg/hmwebrtc/HardwareVideoEncoder;->a(Lorg/hmwebrtc/HardwareVideoEncoder;I)V

    return-void
.end method
