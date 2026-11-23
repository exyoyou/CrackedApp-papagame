.class public final synthetic Lorg/hmwebrtc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/EglRenderer;

.field public final synthetic c:Lorg/hmwebrtc/EglBase$Context;

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/EglBase$Context;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/q;->b:Lorg/hmwebrtc/EglRenderer;

    iput-object p2, p0, Lorg/hmwebrtc/q;->c:Lorg/hmwebrtc/EglBase$Context;

    iput-object p3, p0, Lorg/hmwebrtc/q;->d:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/q;->b:Lorg/hmwebrtc/EglRenderer;

    iget-object v1, p0, Lorg/hmwebrtc/q;->c:Lorg/hmwebrtc/EglBase$Context;

    iget-object v2, p0, Lorg/hmwebrtc/q;->d:[I

    invoke-static {v0, v1, v2}, Lorg/hmwebrtc/EglRenderer;->e(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/EglBase$Context;[I)V

    return-void
.end method
