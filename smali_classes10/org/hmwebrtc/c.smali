.class public final synthetic Lorg/hmwebrtc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/Camera1Session$2;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/Camera1Session$2;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/c;->b:Lorg/hmwebrtc/Camera1Session$2;

    iput-object p2, p0, Lorg/hmwebrtc/c;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/c;->b:Lorg/hmwebrtc/Camera1Session$2;

    iget-object v1, p0, Lorg/hmwebrtc/c;->c:[B

    invoke-static {v0, v1}, Lorg/hmwebrtc/Camera1Session$2;->b(Lorg/hmwebrtc/Camera1Session$2;[B)V

    return-void
.end method
