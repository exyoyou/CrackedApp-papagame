.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nestedScrollView",
            "scrollX",
            "scrollY",
            "oldScrollX",
            "oldScrollY"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/16 p3, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const p2, 0x7f01007e

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne p1, p3, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const p2, 0x7f010067

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    :goto_0
    return-void
.end method
