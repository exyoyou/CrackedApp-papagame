.class Lcom/join/mgps/customview/MyScrollView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/MyScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/MyScrollView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/customview/MyScrollView;->a(Lcom/join/mgps/customview/MyScrollView;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/join/mgps/customview/MyScrollView;->b(Lcom/join/mgps/customview/MyScrollView;I)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/customview/MyScrollView;->c(Lcom/join/mgps/customview/MyScrollView;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/join/mgps/customview/MyScrollView;->c(Lcom/join/mgps/customview/MyScrollView;)Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-wide/16 v2, 0x14

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/customview/MyScrollView;->d(Lcom/join/mgps/customview/MyScrollView;)Lcom/join/mgps/customview/MyScrollView$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView$a;->a:Lcom/join/mgps/customview/MyScrollView;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/customview/MyScrollView;->d(Lcom/join/mgps/customview/MyScrollView;)Lcom/join/mgps/customview/MyScrollView$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/MyScrollView$b;->a(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
