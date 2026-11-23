.class Lcom/papa91/arc/view/MenuView$15;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->showQuestAndTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;

.field final synthetic val$endGameTime:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;JJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$15;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iput p6, p0, Lcom/papa91/arc/view/MenuView$15;->val$endGameTime:I

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$15;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->llQuest:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$15;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->getGamePlayTime()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget p2, p0, Lcom/papa91/arc/view/MenuView$15;->val$endGameTime:I

    .line 10
    .line 11
    div-int/lit16 p1, p1, 0x3e8

    .line 12
    .line 13
    sub-int/2addr p2, p1

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$15;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvTime:Landroid/widget/TextView;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "\u5269\u4f59\u65f6\u95f4\uff1a"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "\u79d2"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    if-gtz p2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView$15;->onFinish()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
