.class public Lcom/kongzue/dialogx/util/views/DialogListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/c0;


# instance fields
.field private b:Lcom/kongzue/dialogx/interfaces/d;

.field private c:Lcom/kongzue/dialogx/interfaces/e;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/e;Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->c:Lcom/kongzue/dialogx/interfaces/e;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/e;Landroid/content/Context;I)V
    .locals 1

    .line 7
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v0, p2, p3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->c:Lcom/kongzue/dialogx/interfaces/e;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public d(Lcom/kongzue/dialogx/interfaces/d;)Lcom/kongzue/dialogx/util/views/DialogListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->b:Lcom/kongzue/dialogx/interfaces/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->b:Lcom/kongzue/dialogx/interfaces/d;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/d;->b(Landroid/view/MotionEvent;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->b:Lcom/kongzue/dialogx/interfaces/d;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/d;->c(Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->b:Lcom/kongzue/dialogx/interfaces/d;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/d;->a(Landroid/view/MotionEvent;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public getBottomMenuListViewTouchEvent()Lcom/kongzue/dialogx/interfaces/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->b:Lcom/kongzue/dialogx/interfaces/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScrollDistance()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    neg-int v2, v2

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int v0, v0, v1

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogListView;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
