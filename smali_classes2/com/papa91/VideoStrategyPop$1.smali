.class Lcom/papa91/VideoStrategyPop$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/VideoStrategyPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/VideoStrategyPop;


# direct methods
.method constructor <init>(Lcom/papa91/VideoStrategyPop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lcom/papa91/VideoStrategyPop;->access$020(Lcom/papa91/VideoStrategyPop;I)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$000(Lcom/papa91/VideoStrategyPop;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$200(Lcom/papa91/VideoStrategyPop;)Landroid/widget/ImageView;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/papa91/VideoStrategyPop;->access$000(Lcom/papa91/VideoStrategyPop;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-wide/16 v1, 0x3e8

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method
