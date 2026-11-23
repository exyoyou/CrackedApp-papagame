.class public abstract Lorg/hmwebrtc/log/LogApi$LogSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LogSink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V
.end method

.method public onLog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/log/LogApi$LogMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hmwebrtc/log/LogApi$LogMessage;

    .line 2
    iget v1, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->level:I

    invoke-virtual {p0, v1, v0}, Lorg/hmwebrtc/log/LogApi$LogSink;->onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method
