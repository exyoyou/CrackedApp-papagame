.class Lcom/join/mgps/activity/MGMainClassifyFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$button"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Landroid/widget/Button;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    if-eq p1, p2, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Landroid/widget/Button;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Landroid/widget/Button;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->Q(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Landroid/widget/Button;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 61
    .line 62
    const-string p2, "\u5206\u7c7b"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/k;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string p2, ""

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/k;->f0(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->Z(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    const/4 p1, 0x0

    .line 103
    return p1
.end method
