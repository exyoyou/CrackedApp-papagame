.class Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerWithExceptionCallback"
.end annotation


# instance fields
.field private final errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string v0, "EglRenderer"

    .line 7
    .line 8
    const-string v1, "Exception on EglRenderer thread"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lorg/hmwebrtc/EglRenderer$ErrorCallback;->onRuntimeException(Ljava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method
