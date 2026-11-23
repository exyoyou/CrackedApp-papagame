.class public Lcom/join/mgps/customview/CollapsedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CollapsedTextView$b;,
        Lcom/join/mgps/customview/CollapsedTextView$TipsGravityMode;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "..."

.field public static final r:I = 0x4

.field private static final s:Ljava/lang/String; = "\u5c55\u5f00\u5168\u6587"

.field private static final t:Ljava/lang/String; = "\u6536\u8d77\u5168\u6587"

.field public static final u:I = 0x0

.field public static final v:I = 0x1


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/join/mgps/customview/CollapsedTextView$b;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CollapsedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CollapsedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lcom/join/mgps/customview/CollapsedTextView$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/customview/CollapsedTextView$b;-><init>(Lcom/join/mgps/customview/CollapsedTextView;Lcom/join/mgps/customview/CollapsedTextView$a;)V

    iput-object p3, p0, Lcom/join/mgps/customview/CollapsedTextView;->n:Lcom/join/mgps/customview/CollapsedTextView$b;

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/customview/CollapsedTextView;->p:Z

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/CollapsedTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/CollapsedTextView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->h:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/CollapsedTextView;Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/CollapsedTextView;->n(Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/CollapsedTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/CollapsedTextView;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/CollapsedTextView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/CollapsedTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/CollapsedTextView;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/join/mgps/customview/CollapsedTextView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/join/mgps/customview/CollapsedTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/CollapsedTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/CollapsedTextView;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/CollapsedTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/CollapsedTextView;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method private n(Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "text"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/s;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 26
    .line 27
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, p0, Lcom/join/mgps/customview/CollapsedTextView;->b:I

    .line 43
    .line 44
    if-gt v1, v2, :cond_2

    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 47
    .line 48
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    invoke-virtual {p2, v2}, Landroid/text/Layout;->getLineStart(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->b:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    iget-object v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->e:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v1, 0x0

    .line 77
    :goto_0
    iget v3, p0, Lcom/join/mgps/customview/CollapsedTextView;->j:I

    .line 78
    .line 79
    const-string v4, "... "

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/join/mgps/customview/CollapsedTextView;->c:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    float-to-int v3, v3

    .line 105
    add-int/2addr v3, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    float-to-int v3, v1

    .line 112
    :goto_1
    iget v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->b:I

    .line 113
    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    int-to-float v5, v3

    .line 121
    add-float/2addr p2, v5

    .line 122
    iget v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->h:I

    .line 123
    .line 124
    int-to-float v1, v1

    .line 125
    cmpl-float p2, p2, v1

    .line 126
    .line 127
    if-lez p2, :cond_5

    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    move v3, v7

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    add-int/lit8 p2, p2, 0x1

    .line 139
    .line 140
    sub-int/2addr v7, p2

    .line 141
    :cond_5
    new-instance p2, Landroid/text/SpannableStringBuilder;

    .line 142
    .line 143
    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 147
    .line 148
    invoke-interface {v0, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, "..."

    .line 156
    .line 157
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/CollapsedTextView;->setSpan(Landroid/text/SpannableStringBuilder;)V

    .line 161
    .line 162
    .line 163
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    return-void
.end method

.method private o(Landroid/widget/TextView$BufferType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/CollapsedTextView;->setSpan(Landroid/text/SpannableStringBuilder;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->CollapsedTextView:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->b:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CollapsedTextView;->setExpandedText(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CollapsedTextView;->setCollapsedText(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CollapsedTextView;->setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/CollapsedTextView;->setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x7

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->j:I

    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->k:I

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput-boolean v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->l:Z

    .line 69
    .line 70
    const/4 v0, 0x5

    .line 71
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput-boolean p2, p0, Lcom/join/mgps/customview/CollapsedTextView;->m:Z

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method private setSpan(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spannable"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->j:I

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "\n"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->i:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const v3, 0x7f071369

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    float-to-int v2, v2

    .line 44
    invoke-static {v2}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-direct {v0, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v4, p0, Lcom/join/mgps/customview/CollapsedTextView;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    sub-int/2addr v2, v4

    .line 63
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/16 v5, 0x11

    .line 68
    .line 69
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->e:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/customview/CollapsedTextView;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-int/lit8 v2, v2, 0x2

    .line 81
    .line 82
    iget-object v4, p0, Lcom/join/mgps/customview/CollapsedTextView;->n:Lcom/join/mgps/customview/CollapsedTextView$b;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    sub-int/2addr v6, v2

    .line 89
    add-int/lit8 v6, v6, 0x2

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p1, v4, v6, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 96
    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 101
    .line 102
    .line 103
    new-instance v2, Landroid/text/style/ImageSpan;

    .line 104
    .line 105
    invoke-direct {v2, v0, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sub-int/2addr v0, v3

    .line 113
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {p1, v2, v0, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->p:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->o:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsedDrawable"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/CollapsedTextView;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setCollapsedDrawableRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CollapsedTextView;->setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCollapsedLines(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsedLines"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setCollapsedText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsedText"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "\u6536\u8d77\u5168\u6587"

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->d:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandedDrawable"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/customview/CollapsedTextView;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setExpandedDrawableRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CollapsedTextView;->setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setExpandedText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandedText"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "\u5c55\u5f00\u5168\u6587"

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->o:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    invoke-super {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "text",
            "type"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->b:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->i:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/s;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->g:Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/CollapsedTextView;->o(Landroid/widget/TextView$BufferType;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/CollapsedTextView;->h:I

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/join/mgps/customview/CollapsedTextView$a;

    .line 35
    .line 36
    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/customview/CollapsedTextView$a;-><init>(Lcom/join/mgps/customview/CollapsedTextView;Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    .line 41
    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/CollapsedTextView;->n(Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public setTipsClickable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipsClickable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTipsColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipsColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setTipsGravity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipsGravity"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setTipsUnderline(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipsUnderline"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CollapsedTextView;->l:Z

    .line 2
    .line 3
    return-void
.end method
