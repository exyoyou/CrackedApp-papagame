.class Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/carbs/android/expandabletextview/library/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;


# direct methods
.method private constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 10
    .line 11
    invoke-virtual {p1, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l(Landroid/view/View;)Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p1, p1, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 21
    .line 22
    invoke-static {p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 5
    .line 6
    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 18
    .line 19
    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 31
    .line 32
    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 42
    .line 43
    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->c:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 55
    .line 56
    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v0, 0x0

    .line 62
    :goto_1
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 63
    .line 64
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
