.class Lcom/join/mgps/customview/h0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/h0;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/customview/h0;->t:Landroid/content/Context;

    .line 7
    .line 8
    const v1, 0x7f010091

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/customview/h0;->t:Landroid/content/Context;

    .line 18
    .line 19
    const v2, 0x7f010093

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget p1, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    const-wide/16 v2, 0xc8

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x3

    .line 35
    if-eq p1, v5, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    if-eq p1, v6, :cond_1

    .line 41
    .line 42
    if-eq p1, v4, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->m:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->l:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->l:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->l:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->m:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->m:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/h0$a;->a()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->l:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/customview/h0$a;->a()V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Lcom/join/mgps/customview/h0;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->m:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void
.end method
