.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

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
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

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
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    add-int/lit8 p3, p2, 0x32

    .line 18
    .line 19
    int-to-float p3, p3

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    mul-float p3, p3, v0

    .line 23
    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    .line 25
    .line 26
    div-float/2addr p3, v0

    .line 27
    invoke-virtual {p1, p3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeScale(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p2, p2, 0x32

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, "%"

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
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
