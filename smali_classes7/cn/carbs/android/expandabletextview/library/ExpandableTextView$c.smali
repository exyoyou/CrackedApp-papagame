.class public Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/carbs/android/expandabletextview/library/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

.field final synthetic b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;


# direct methods
.method public constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    float-to-int p3, p3

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr p3, v1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr p3, v1

    .line 31
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    int-to-float v0, v0

    .line 40
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const-class p3, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 45
    .line 46
    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, [Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 51
    .line 52
    array-length p2, p1

    .line 53
    if-lez p2, :cond_0

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    aget-object p1, p1, p2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    return-object p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->a(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 20
    .line 21
    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 26
    .line 27
    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x2

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    if-eq p1, p3, :cond_3

    .line 53
    .line 54
    invoke-virtual {p3, v3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->a(Z)V

    .line 55
    .line 56
    .line 57
    iput-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 58
    .line 59
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->a(Z)V

    .line 68
    .line 69
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    iput-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 74
    .line 75
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return v1
.end method
