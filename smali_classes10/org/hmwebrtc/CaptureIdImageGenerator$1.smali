.class Lorg/hmwebrtc/CaptureIdImageGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/CaptureIdImageGenerator;->initOverlap(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/CaptureIdImageGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCaptureIdChanged(I)V
    .locals 3

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$008(Lorg/hmwebrtc/CaptureIdImageGenerator;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$000(Lorg/hmwebrtc/CaptureIdImageGenerator;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xbb8

    .line 16
    .line 17
    if-le v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$002(Lorg/hmwebrtc/CaptureIdImageGenerator;I)I

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$100(Lorg/hmwebrtc/CaptureIdImageGenerator;)Ljava/util/concurrent/BlockingDeque;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;

    .line 32
    .line 33
    iget-object v2, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 34
    .line 35
    invoke-static {v2}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$000(Lorg/hmwebrtc/CaptureIdImageGenerator;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v1, p1, v2}, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 46
    .line 47
    invoke-static {p1}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$100(Lorg/hmwebrtc/CaptureIdImageGenerator;)Ljava/util/concurrent/BlockingDeque;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v0, 0x5

    .line 56
    const-string v1, "CaptureIdImageGenerator"

    .line 57
    .line 58
    if-le p1, v0, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 61
    .line 62
    invoke-static {p1}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$100(Lorg/hmwebrtc/CaptureIdImageGenerator;)Ljava/util/concurrent/BlockingDeque;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string p1, "remove captureInfo: size>5"

    .line 70
    .line 71
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;->this$0:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 76
    .line 77
    invoke-static {p1}, Lorg/hmwebrtc/CaptureIdImageGenerator;->access$100(Lorg/hmwebrtc/CaptureIdImageGenerator;)Ljava/util/concurrent/BlockingDeque;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const/4 v0, 0x2

    .line 86
    if-lt p1, v0, :cond_3

    .line 87
    .line 88
    const-string p1, "captureInfo list size>=2"

    .line 89
    .line 90
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void
.end method
