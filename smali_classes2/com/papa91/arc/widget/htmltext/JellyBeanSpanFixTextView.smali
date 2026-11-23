.class public Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    array-length v3, v0

    .line 15
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    array-length v4, v0

    .line 21
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    array-length v4, v0

    .line 25
    :goto_0
    if-ge v2, v4, :cond_2

    .line 26
    .line 27
    aget-object v5, v0, v2

    .line 28
    .line 29
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    add-int/lit8 v7, v6, -0x1

    .line 34
    .line 35
    invoke-direct {p0, p1, v7}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const-string v8, " "

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v6, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-direct {p0, p1, v6}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1, v6, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->fixed(Ljava/util/List;Ljava/util/List;)Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p1

    .line 73
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->notFixed()Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method private fallbackToString(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private fixOnMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/text/Spanned;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fallbackToString(II)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->fixed:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fallbackToString(II)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private isNotSpace(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p2, v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 p2, 0x20

    .line 14
    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    iget-object v0, p4, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesAfter:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, " "

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/lit8 v3, v1, 0x1

    .line 24
    .line 25
    invoke-virtual {p3, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    invoke-virtual {p3, v1, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p4, p4, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesBefore:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    const/4 v0, 0x1

    .line 43
    :goto_1
    const/4 v1, 0x1

    .line 44
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 v3, v1, -0x1

    .line 59
    .line 60
    invoke-virtual {p3, v3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-direct {p0, p3, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    invoke-virtual {p3, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method private setTextAndMeasure(Ljava/lang/CharSequence;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p2, p3}, Landroid/widget/TextView;->onMeasure(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fixOnMeasure(II)V

    .line 6
    .line 7
    .line 8
    :goto_0
    return-void
.end method
