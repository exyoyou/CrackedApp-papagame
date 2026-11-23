.class public Lcom/join/mgps/customview/MyRadioGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyRadioGroup$d;,
        Lcom/join/mgps/customview/MyRadioGroup$c;,
        Lcom/join/mgps/customview/MyRadioGroup$e;,
        Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private d:Z

.field private e:Lcom/join/mgps/customview/MyRadioGroup$d;

.field private f:Lcom/join/mgps/customview/MyRadioGroup$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Z

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/MyRadioGroup;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/MyRadioGroup;->m()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->j(Landroid/widget/RadioButton;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->e:Lcom/join/mgps/customview/MyRadioGroup$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyRadioGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyRadioGroup;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/join/mgps/customview/MyRadioGroup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/MyRadioGroup;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/MyRadioGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->setCheckedId(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/customview/MyRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private j(Landroid/widget/RadioButton;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radioButton"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    instance-of v4, v3, Landroid/widget/RadioButton;

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    if-ne v3, p1, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    check-cast v3, Landroid/widget/RadioButton;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    instance-of v4, v3, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    if-eqz v4, :cond_4

    .line 29
    .line 30
    check-cast v3, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_1
    if-ge v5, v4, :cond_4

    .line 38
    .line 39
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    instance-of v7, v6, Landroid/widget/RadioButton;

    .line 44
    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    check-cast v6, Landroid/widget/RadioButton;

    .line 48
    .line 49
    if-ne v6, p1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/MyRadioGroup$c;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Lcom/join/mgps/customview/MyRadioGroup$a;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$e;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/MyRadioGroup$e;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Lcom/join/mgps/customview/MyRadioGroup$a;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->f:Lcom/join/mgps/customview/MyRadioGroup$e;

    .line 15
    .line 16
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private n(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "checked"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroid/widget/RadioButton;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroid/widget/RadioButton;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private setCheckedId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/widget/RadioButton;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$a;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/MyRadioGroup$a;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    instance-of v0, p1, Landroid/widget/LinearLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v4, v3, Landroid/widget/RadioButton;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    check-cast v3, Landroid/widget/RadioButton;

    .line 37
    .line 38
    new-instance v4, Lcom/join/mgps/customview/MyRadioGroup$b;

    .line 39
    .line 40
    invoke-direct {v4, p0, v3}, Lcom/join/mgps/customview/MyRadioGroup$b;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->l(Landroid/util/AttributeSet;)Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->l(Landroid/util/AttributeSet;)Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public i(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v1, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 10
    .line 11
    if-eq v1, v0, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->setCheckedId(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/MyRadioGroup;->i(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public l(Landroid/util/AttributeSet;)Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Z

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Z

    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:I

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyRadioGroup;->setCheckedId(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/join/mgps/customview/MyRadioGroup;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/join/mgps/customview/MyRadioGroup;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/join/mgps/customview/MyRadioGroup$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->e:Lcom/join/mgps/customview/MyRadioGroup$d;

    .line 2
    .line 3
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->f:Lcom/join/mgps/customview/MyRadioGroup$e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/MyRadioGroup$e;->a(Lcom/join/mgps/customview/MyRadioGroup$e;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4
    .line 5
    .line 6
    return-void
.end method
