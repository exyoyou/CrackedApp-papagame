.class public final synthetic Lorg/webrtc/haima/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/HmInputHelper;

.field public final synthetic c:Lorg/hmwebrtc/DataChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/HmInputHelper;Lorg/hmwebrtc/DataChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/i;->b:Lorg/webrtc/haima/HmInputHelper;

    iput-object p2, p0, Lorg/webrtc/haima/i;->c:Lorg/hmwebrtc/DataChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/i;->b:Lorg/webrtc/haima/HmInputHelper;

    iget-object v1, p0, Lorg/webrtc/haima/i;->c:Lorg/hmwebrtc/DataChannel;

    invoke-static {v0, v1}, Lorg/webrtc/haima/HmInputHelper;->b(Lorg/webrtc/haima/HmInputHelper;Lorg/hmwebrtc/DataChannel;)V

    return-void
.end method
