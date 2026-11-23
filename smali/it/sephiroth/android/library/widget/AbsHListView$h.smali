.class Lit/sephiroth/android/library/widget/AbsHListView$h;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "info"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->k(Landroid/view/View;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/ListAdapter;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq p1, v1, :cond_4

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    const/16 p1, 0x8

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p1, 0x4

    .line 58
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const/16 p1, 0x10

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const/16 p1, 0x20

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "action",
            "arguments"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Lit/sephiroth/android/library/widget/AdapterView;->k(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 16
    .line 17
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/ListAdapter;

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq p3, v2, :cond_a

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_a

    .line 37
    .line 38
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 46
    .line 47
    invoke-virtual {v1, p3}, Lit/sephiroth/android/library/widget/AdapterView;->j(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const/4 v1, 0x4

    .line 52
    if-eq p2, v1, :cond_9

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    if-eq p2, v1, :cond_7

    .line 57
    .line 58
    const/16 v0, 0x10

    .line 59
    .line 60
    if-eq p2, v0, :cond_5

    .line 61
    .line 62
    const/16 v0, 0x20

    .line 63
    .line 64
    if-eq p2, v0, :cond_3

    .line 65
    .line 66
    return v3

    .line 67
    :cond_3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/View;->isLongClickable()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 76
    .line 77
    invoke-virtual {p2, p1, p3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->u0(Landroid/view/View;IJ)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_4
    return v3

    .line 83
    :cond_5
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_6

    .line 90
    .line 91
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 92
    .line 93
    invoke-virtual {p2, p1, p3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->q(Landroid/view/View;IJ)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1

    .line 98
    :cond_6
    return v3

    .line 99
    :cond_7
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 100
    .line 101
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ne p1, p3, :cond_8

    .line 106
    .line 107
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setSelection(I)V

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :cond_8
    return v3

    .line 114
    :cond_9
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 115
    .line 116
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eq p1, p3, :cond_a

    .line 121
    .line 122
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$h;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Lit/sephiroth/android/library/widget/AdapterView;->setSelection(I)V

    .line 125
    .line 126
    .line 127
    return v0

    .line 128
    :cond_a
    :goto_0
    return v3
.end method
