.class public Lcom/byazt/tm/DynamicTimeOuterSkip;
.super Lcom/byazt/tm/DynamicButton;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kn/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x965
    }
.end annotation


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/tm/DynamicButton;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0}, Lcom/byazt/tm/DynamicRootView;->setTimeOutListener(Lcom/byazt/kn/ve;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/byazt/xl/u;->z()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/byazt/tm/DynamicTimeOuterSkip;->c:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip-with-time-skip-btn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u8df3\u8fc7"

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/byazt/tm/DynamicTimeOuterSkip;->c:Z

    if-eqz v0, :cond_0

    const-string v1, "X"

    :cond_0
    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    const-string p1, "| "

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/byazt/tm/DynamicTimeOuterSkip;->c(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 5
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/byazt/tm/DynamicTimeOuterSkip;->c(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "skip-with-time-skip-btn"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v3, 0x11

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    iget v4, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 25
    .line 26
    iget v5, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 27
    .line 28
    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const v4, 0x800015

    .line 32
    .line 33
    .line 34
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 45
    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/byazt/tm/DynamicBaseWidget;->n()V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 77
    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const/16 v0, 0x8

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 5
    .line 6
    check-cast p1, Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public x()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/tm/DynamicButton;->x()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "skip-with-time-skip-btn"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    return v0
.end method
