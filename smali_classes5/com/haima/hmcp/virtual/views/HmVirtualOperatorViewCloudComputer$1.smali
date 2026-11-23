.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    int-to-float p3, p2

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    mul-float p3, p3, v0

    .line 21
    .line 22
    const/high16 v0, 0x42c80000    # 100.0f

    .line 23
    .line 24
    div-float/2addr p3, v0

    .line 25
    invoke-virtual {p1, p3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeScale(F)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "%"

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->setResetEnabled(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 61
    .line 62
    const/4 p2, 0x4

    .line 63
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->performGuide(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
