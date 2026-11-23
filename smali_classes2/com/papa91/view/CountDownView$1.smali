.class Lcom/papa91/view/CountDownView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/CountDownView;


# direct methods
.method constructor <init>(Lcom/papa91/view/CountDownView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/CountDownView$1;->this$0:Lcom/papa91/view/CountDownView;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/CountDownView$1;->this$0:Lcom/papa91/view/CountDownView;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/papa91/view/CountDownView$OnCountDownListener;->onCountFinished()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/papa91/view/CountDownView$1;->this$0:Lcom/papa91/view/CountDownView;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/papa91/view/CountDownView$OnCountDownListener;->onSuccessFinish()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method
