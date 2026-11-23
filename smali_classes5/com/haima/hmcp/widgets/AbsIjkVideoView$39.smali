.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showLocalKeyboard(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$39;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$39;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/16 p1, 0x43

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$39;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 22
    .line 23
    const/16 p2, 0x8

    .line 24
    .line 25
    invoke-static {p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyCodeDown(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-ne p2, p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x1

    .line 40
    if-ne p1, p2, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$39;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    new-instance p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView$39$1;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$39$1;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$39;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v1, 0x10

    .line 50
    .line 51
    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return v0
.end method
