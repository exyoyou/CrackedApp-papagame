.class Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->changeRenderRotation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

.field final synthetic val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->access$000(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->access$000(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmShowWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->access$000(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmShowHeight()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sget-object v4, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "onGlobalLayout: "

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, "; "

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v7, "-----"

    .line 77
    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    if-ne v2, v0, :cond_0

    .line 98
    .line 99
    if-eq v3, v1, :cond_1

    .line 100
    .line 101
    :cond_0
    const-string v0, "onGlobalLayout: request layout"

    .line 102
    .line 103
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 107
    .line 108
    invoke-interface {v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->requestLayout()V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;->val$renderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method
