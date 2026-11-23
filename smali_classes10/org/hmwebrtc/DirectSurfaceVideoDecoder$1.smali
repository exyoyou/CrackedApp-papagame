.class Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->CreateSeiDataReportThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$000(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 15
    .line 16
    invoke-static {v1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$100(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 24
    .line 25
    invoke-static {v1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$100(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 33
    .line 34
    invoke-static {v1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$000(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->onFrameSeiDataReportCallback(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const-string v0, "SurfaceVideoDecoder"

    .line 43
    .line 44
    const-string v1, "run sei data report scheduleAtFixedRate Exception"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    return-void
.end method
