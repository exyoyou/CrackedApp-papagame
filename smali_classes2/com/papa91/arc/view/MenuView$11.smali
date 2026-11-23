.class Lcom/papa91/arc/view/MenuView$11;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    iput-wide v1, v0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->alertRing()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hideTimer()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->showTimeLimitedDialog2()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v0, "PSPLimitPopup"

    .line 25
    .line 26
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 4
    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    div-long v2, p1, v2

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/text/SpannableString;

    .line 35
    .line 36
    const-string v2, "\u8fdb\u5165\u5e7f\u544a"

    .line 37
    .line 38
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 42
    .line 43
    const-string v3, "#9C7140"

    .line 44
    .line 45
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/16 v4, 0x21

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->alertRing()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 80
    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/MenuViewListener;->onTimerTick(J)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method
