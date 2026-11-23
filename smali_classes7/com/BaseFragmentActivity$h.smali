.class Lcom/BaseFragmentActivity$h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->showPopwindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$FLIP_DISTANCE"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$h;->c:Lcom/BaseFragmentActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/BaseFragmentActivity$h;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    sub-float/2addr p3, p4

    .line 10
    iget p4, p0, Lcom/BaseFragmentActivity$h;->b:I

    .line 11
    .line 12
    int-to-float p4, p4

    .line 13
    const/4 v0, 0x1

    .line 14
    cmpl-float p3, p3, p4

    .line 15
    .line 16
    if-gtz p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    sub-float/2addr p3, p4

    .line 27
    iget p4, p0, Lcom/BaseFragmentActivity$h;->b:I

    .line 28
    .line 29
    int-to-float p4, p4

    .line 30
    cmpl-float p3, p3, p4

    .line 31
    .line 32
    if-gtz p3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    sub-float/2addr p3, p4

    .line 43
    iget p4, p0, Lcom/BaseFragmentActivity$h;->b:I

    .line 44
    .line 45
    int-to-float p4, p4

    .line 46
    cmpl-float p3, p3, p4

    .line 47
    .line 48
    if-lez p3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-float/2addr p2, p1

    .line 60
    iget p1, p0, Lcom/BaseFragmentActivity$h;->b:I

    .line 61
    .line 62
    int-to-float p1, p1

    .line 63
    cmpl-float p1, p2, p1

    .line 64
    .line 65
    if-lez p1, :cond_1

    .line 66
    .line 67
    return v0

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    return p1

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/BaseFragmentActivity$h;->c:Lcom/BaseFragmentActivity;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/BaseFragmentActivity$h;->c:Lcom/BaseFragmentActivity;

    .line 78
    .line 79
    const/4 p2, 0x0

    .line 80
    iput-object p2, p1, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 81
    .line 82
    iget-boolean p2, p1, Lcom/BaseFragmentActivity;->isSo:Z

    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p1, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object p2, Lcom/papa/sim/statistic/Event;->exitSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    new-instance p3, Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object p4, p0, Lcom/BaseFragmentActivity$h;->c:Lcom/BaseFragmentActivity;

    .line 104
    .line 105
    iget-object p4, p4, Lcom/BaseFragmentActivity;->gameid:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object p1, p1, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    sget-object p2, Lcom/papa/sim/statistic/Event;->exitSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 126
    .line 127
    new-instance p3, Lcom/papa/sim/statistic/Ext;

    .line 128
    .line 129
    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object p4, p0, Lcom/BaseFragmentActivity$h;->c:Lcom/BaseFragmentActivity;

    .line 133
    .line 134
    iget-object p4, p4, Lcom/BaseFragmentActivity;->gameid:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return v0
.end method
