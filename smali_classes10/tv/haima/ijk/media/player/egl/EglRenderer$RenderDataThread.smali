.class Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/egl/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderDataThread"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;


# direct methods
.method private constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    return-void
.end method

.method private popData()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$800(Ltv/haima/ijk/media/player/egl/EglRenderer;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 8
    .line 9
    invoke-static {v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$900(Ltv/haima/ijk/media/player/egl/EglRenderer;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 17
    .line 18
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$800(Ltv/haima/ijk/media/player/egl/EglRenderer;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 23
    .line 24
    invoke-static {v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$900(Ltv/haima/ijk/media/player/egl/EglRenderer;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 29
    .line 30
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$900(Ltv/haima/ijk/media/player/egl/EglRenderer;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 35
    .line 36
    invoke-static {v3}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$800(Ltv/haima/ijk/media/player/egl/EglRenderer;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-le v2, v3, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 43
    .line 44
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1000(Ltv/haima/ijk/media/player/egl/EglRenderer;)[J

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 53
    .line 54
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 61
    .line 62
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;->onFrameRendered([J)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 71
    .line 72
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1000(Ltv/haima/ijk/media/player/egl/EglRenderer;)[J

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/16 v3, 0x77

    .line 77
    .line 78
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 83
    .line 84
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 91
    .line 92
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;->onFrameRendered([J)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 100
    .line 101
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1000(Ltv/haima/ijk/media/player/egl/EglRenderer;)[J

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 111
    .line 112
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 119
    .line 120
    invoke-static {v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;->onFrameRendered([J)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_0
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 128
    .line 129
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$802(Ltv/haima/ijk/media/player/egl/EglRenderer;I)I

    .line 130
    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->popData()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    :cond_0
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 21
    .line 22
    const-string v1, "RenderDataThread interrupte"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$700(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
