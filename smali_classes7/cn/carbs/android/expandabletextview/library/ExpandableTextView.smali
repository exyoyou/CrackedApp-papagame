.class public Lcn/carbs/android/expandabletextview/library/ExpandableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;,
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;,
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;,
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field private static final B:Ljava/lang/String; = "android.view.View"

.field private static final C:Ljava/lang/String; = "android.view.View$ListenerInfo"

.field private static final D:Ljava/lang/String; = ".."

.field private static final E:Ljava/lang/String; = " "

.field private static final F:Ljava/lang/String; = " "

.field private static final G:I = 0x2

.field private static final H:I = -0xcb6725

.field private static final I:I = -0x18b3c4

.field private static final J:I = 0x55999999

.field private static final K:I = 0x55999999

.field private static final L:Z = true

.field private static final M:Z = true

.field private static final N:Z = true

.field public static final z:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

.field private q:Landroid/widget/TextView$BufferType;

.field private r:Landroid/text/TextPaint;

.field private s:Landroid/text/Layout;

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/CharSequence;

.field private x:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

.field private y:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, " "

    .line 2
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 5
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 6
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:Z

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    const p1, -0xcb6725

    .line 8
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    const p1, -0x18b3c4

    .line 9
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    const p1, 0x55999999

    .line 10
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    .line 11
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 13
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/widget/TextView$BufferType;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 15
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 16
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 17
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, " "

    .line 19
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 22
    iput-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 23
    iput-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:Z

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    const v0, -0xcb6725

    .line 25
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    const v0, -0x18b3c4

    .line 26
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    const v0, 0x55999999

    .line 27
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    .line 28
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 30
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/widget/TextView$BufferType;

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 32
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 33
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, " "

    .line 37
    iput-object p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Ljava/lang/String;

    const/4 p3, 0x1

    .line 39
    iput-boolean p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 40
    iput-boolean p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 41
    iput-boolean p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:Z

    const/4 p3, 0x2

    .line 42
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    const p3, -0xcb6725

    .line 43
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    const p3, -0x18b3c4

    .line 44
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    const p3, 0x55999999

    .line 45
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    .line 46
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    const/4 p3, 0x0

    .line 47
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 48
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/widget/TextView$BufferType;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 50
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 51
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 52
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V

    return-void
.end method

.method static synthetic a(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Landroid/widget/TextView$BufferType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/widget/TextView$BufferType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    .line 2
    .line 3
    return p0
.end method

.method private getNewTextByConfig()Ljava/lang/CharSequence;
    .locals 13

    .line 1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:Landroid/text/Layout;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 27
    .line 28
    if-gtz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sub-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-int/2addr v0, v1

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    sub-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 71
    .line 72
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 77
    .line 78
    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 80
    .line 81
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 82
    .line 83
    const/16 v1, 0x21

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    if-eq v0, v2, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_5
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:Z

    .line 94
    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_6
    new-instance v0, Landroid/text/DynamicLayout;

    .line 101
    .line 102
    iget-object v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 103
    .line 104
    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 105
    .line 106
    iget v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 107
    .line 108
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 109
    .line 110
    const/high16 v7, 0x3f800000    # 1.0f

    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    move-object v2, v0

    .line 115
    invoke-direct/range {v2 .. v9}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:Landroid/text/Layout;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 125
    .line 126
    iget v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    .line 127
    .line 128
    if-gt v0, v2, :cond_7

    .line 129
    .line 130
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 134
    .line 135
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 136
    .line 137
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {p0, v4}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    sub-int/2addr v3, v4

    .line 165
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_8
    new-instance v0, Landroid/text/DynamicLayout;

    .line 174
    .line 175
    iget-object v6, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 176
    .line 177
    iget-object v7, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 178
    .line 179
    iget v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 180
    .line 181
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 182
    .line 183
    const/high16 v10, 0x3f800000    # 1.0f

    .line 184
    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v12, 0x0

    .line 187
    move-object v5, v0

    .line 188
    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 189
    .line 190
    .line 191
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:Landroid/text/Layout;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 198
    .line 199
    iget v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    .line 200
    .line 201
    if-gt v0, v3, :cond_9

    .line 202
    .line 203
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_9
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getValidLayout()Landroid/text/Layout;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    .line 211
    .line 212
    sub-int/2addr v3, v2

    .line 213
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getValidLayout()Landroid/text/Layout;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iget v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    .line 222
    .line 223
    sub-int/2addr v4, v2

    .line 224
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 229
    .line 230
    invoke-direct {p0, v4}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    sub-int v4, v0, v4

    .line 235
    .line 236
    iget-boolean v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 237
    .line 238
    const/4 v6, 0x0

    .line 239
    if-eqz v5, :cond_a

    .line 240
    .line 241
    iget-object v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 242
    .line 243
    invoke-direct {p0, v5}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    iget-object v7, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 248
    .line 249
    invoke-direct {p0, v7}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    add-int/2addr v5, v7

    .line 254
    goto :goto_1

    .line 255
    :cond_a
    const/4 v5, 0x0

    .line 256
    :goto_1
    sub-int/2addr v4, v5

    .line 257
    if-gt v4, v3, :cond_b

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_b
    move v0, v4

    .line 261
    :goto_2
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getValidLayout()Landroid/text/Layout;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    iget-object v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 270
    .line 271
    iget-object v7, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 272
    .line 273
    invoke-interface {v7, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    float-to-double v7, v5

    .line 286
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 287
    .line 288
    add-double/2addr v7, v9

    .line 289
    double-to-int v5, v7

    .line 290
    sub-int/2addr v4, v5

    .line 291
    iget-object v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 292
    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 299
    .line 300
    invoke-direct {p0, v8}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-boolean v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 308
    .line 309
    if-eqz v8, :cond_c

    .line 310
    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 317
    .line 318
    invoke-direct {p0, v11}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 326
    .line 327
    invoke-direct {p0, v11}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    goto :goto_3

    .line 339
    :cond_c
    const-string v8, ""

    .line 340
    .line 341
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    int-to-float v7, v4

    .line 353
    cmpl-float v8, v7, v5

    .line 354
    .line 355
    if-lez v8, :cond_e

    .line 356
    .line 357
    const/4 v3, 0x0

    .line 358
    const/4 v4, 0x0

    .line 359
    :goto_4
    int-to-float v3, v3

    .line 360
    add-float/2addr v3, v5

    .line 361
    cmpl-float v3, v7, v3

    .line 362
    .line 363
    if-lez v3, :cond_d

    .line 364
    .line 365
    add-int/lit8 v4, v4, 0x1

    .line 366
    .line 367
    add-int v3, v0, v4

    .line 368
    .line 369
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 370
    .line 371
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    if-gt v3, v8, :cond_d

    .line 376
    .line 377
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 378
    .line 379
    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 380
    .line 381
    invoke-interface {v11, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    float-to-double v11, v3

    .line 394
    add-double/2addr v11, v9

    .line 395
    double-to-int v3, v11

    .line 396
    goto :goto_4

    .line 397
    :cond_d
    sub-int/2addr v4, v2

    .line 398
    add-int/2addr v0, v4

    .line 399
    goto :goto_6

    .line 400
    :cond_e
    const/4 v2, 0x0

    .line 401
    const/4 v7, 0x0

    .line 402
    :goto_5
    add-int/2addr v2, v4

    .line 403
    int-to-float v2, v2

    .line 404
    cmpg-float v2, v2, v5

    .line 405
    .line 406
    if-gez v2, :cond_f

    .line 407
    .line 408
    add-int/lit8 v7, v7, -0x1

    .line 409
    .line 410
    add-int v2, v0, v7

    .line 411
    .line 412
    if-le v2, v3, :cond_f

    .line 413
    .line 414
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/TextPaint;

    .line 415
    .line 416
    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 417
    .line 418
    invoke-interface {v11, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    float-to-double v11, v2

    .line 431
    add-double/2addr v11, v9

    .line 432
    double-to-int v2, v11

    .line 433
    goto :goto_5

    .line 434
    :cond_f
    add-int/2addr v0, v7

    .line 435
    :goto_6
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 436
    .line 437
    invoke-interface {v2, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-direct {p0, v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 446
    .line 447
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    iget-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 457
    .line 458
    if-eqz v2, :cond_10

    .line 459
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    iget-object v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 466
    .line 467
    invoke-direct {p0, v3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 475
    .line 476
    invoke-direct {p0, v3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 488
    .line 489
    .line 490
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 491
    .line 492
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 497
    .line 498
    invoke-direct {p0, v4}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    sub-int/2addr v3, v4

    .line 503
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 508
    .line 509
    .line 510
    :cond_10
    return-object v0
.end method

.method private getValidLayout()Landroid/text/Layout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:Landroid/text/Layout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    return-object v0
.end method

.method static synthetic h(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    .line 2
    .line 3
    return p0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private k(Ljava/lang/String;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private m(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 2
    .line 3
    const-string v1, "mOnClickListener"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :goto_0
    return-object p1
.end method

.method private n(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 3
    .line 4
    const-string v2, "mListenerInfo"

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    const-string v1, "android.view.View$ListenerInfo"

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "mOnClickListener"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    return-object v0
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 8
    .line 9
    new-instance v0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, ".."

    .line 26
    .line 27
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v2, Lcn/carbs/android/expandabletextview/library/R$string;->to_expand_hint:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget v2, Lcn/carbs/android/expandabletextview/library/R$string;->to_shrink_hint:I

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 68
    .line 69
    :cond_2
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    new-instance v0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

    .line 74
    .line 75
    invoke-direct {v0, p0, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->x:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, p2, :cond_10

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_MaxLinesOnShrink:I

    .line 26
    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_2
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_EllipsisHint:I

    .line 39
    .line 40
    if-ne v2, v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_3
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHint:I

    .line 51
    .line 52
    if-ne v2, v3, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_4
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHint:I

    .line 63
    .line 64
    if-ne v2, v3, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_5
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_EnableToggle:I

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    if-ne v2, v3, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_6
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHintShow:I

    .line 88
    .line 89
    if-ne v2, v3, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHintShow:I

    .line 99
    .line 100
    if-ne v2, v3, :cond_8

    .line 101
    .line 102
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:Z

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_8
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHintColor:I

    .line 110
    .line 111
    if-ne v2, v3, :cond_9

    .line 112
    .line 113
    const v3, -0xcb6725

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_9
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHintColor:I

    .line 124
    .line 125
    if-ne v2, v3, :cond_a

    .line 126
    .line 127
    const v3, -0x18b3c4

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_a
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHintColorBgPressed:I

    .line 138
    .line 139
    const v4, 0x55999999

    .line 140
    .line 141
    .line 142
    if-ne v2, v3, :cond_b

    .line 143
    .line 144
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_b
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHintColorBgPressed:I

    .line 152
    .line 153
    if-ne v2, v3, :cond_c

    .line 154
    .line 155
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_c
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_InitState:I

    .line 163
    .line 164
    if-ne v2, v3, :cond_d

    .line 165
    .line 166
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_d
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_GapToExpandHint:I

    .line 174
    .line 175
    if-ne v2, v3, :cond_e

    .line 176
    .line 177
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_e
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_GapToShrinkHint:I

    .line 185
    .line 186
    if-ne v2, v3, :cond_f

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Ljava/lang/String;

    .line 193
    .line 194
    :cond_f
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method private q(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    const-string v0, "\n"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object p1
.end method

.method private r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 11
    .line 12
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->y:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;->a(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 21
    .line 22
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->y:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;->b(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/widget/TextView$BufferType;

    .line 34
    .line 35
    invoke-direct {p0, v0, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public getExpandState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public l(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n(Landroid/view/View;)Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setExpandListener(Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->y:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;

    .line 2
    .line 3
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/widget/TextView$BufferType;

    .line 4
    .line 5
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 2
    .line 3
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public v(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
