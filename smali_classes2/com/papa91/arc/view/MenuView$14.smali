.class Lcom/papa91/arc/view/MenuView$14;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->showEndGameCountdown()V
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
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->flCountDown:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->showQuestAndTime()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x3

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->ivCountDown:Landroid/widget/ImageView;

    .line 13
    .line 14
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->count_down_3:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 v0, 0x2

    .line 21
    .line 22
    cmp-long v2, p1, v0

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->ivCountDown:Landroid/widget/ImageView;

    .line 29
    .line 30
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->count_down_2:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, 0x1

    .line 37
    .line 38
    cmp-long v2, p1, v0

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$14;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->ivCountDown:Landroid/widget/ImageView;

    .line 45
    .line 46
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->count_down_1:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method
