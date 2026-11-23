.class public Lcom/join/android/app/common/view/CollapsibleTextView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/view/CollapsibleTextView$a;
    }
.end annotation


# static fields
.field private static h:I = 0x5

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/join/android/app/common/view/CollapsibleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/common/view/CollapsibleTextView;->i(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/view/CollapsibleTextView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/join/android/app/common/view/CollapsibleTextView;->i(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/view/CollapsibleTextView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/view/CollapsibleTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/android/app/common/view/CollapsibleTextView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/common/view/CollapsibleTextView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic d(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->CollapsibleTextView:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v0, 0x17

    .line 10
    .line 11
    const/high16 v1, 0x41900000    # 18.0f

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    const/high16 v0, -0x1000000

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 33
    .line 34
    const/16 v0, 0x33

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    .line 43
    .line 44
    const/16 p2, 0x14

    .line 45
    .line 46
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/16 v0, 0x16

    .line 51
    .line 52
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v4, 0x15

    .line 57
    .line 58
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/16 v5, 0x13

    .line 63
    .line 64
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    iget-object v7, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v7, p2, v0, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    .line 72
    .line 73
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .line 75
    const/4 v0, -0x1

    .line 76
    const/4 v4, -0x2

    .line 77
    invoke-direct {p2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v6, 0x5

    .line 86
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v7, 0x4

    .line 91
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const/4 v8, 0x2

    .line 96
    invoke-virtual {p1, v8, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {p2, v0, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 109
    .line 110
    const/16 v0, 0x18

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 120
    .line 121
    const/16 v0, 0x10

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 131
    .line 132
    const/4 v0, 0x6

    .line 133
    const v1, -0xa8946b

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 144
    .line 145
    const/4 v0, 0x7

    .line 146
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    .line 152
    .line 153
    const/16 p2, 0xd

    .line 154
    .line 155
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    const/16 v0, 0xf

    .line 160
    .line 161
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/16 v1, 0xe

    .line 166
    .line 167
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    const/16 v5, 0xc

    .line 172
    .line 173
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    iget-object v6, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-virtual {v6, p2, v0, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    .line 181
    .line 182
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .line 184
    invoke-direct {p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    .line 186
    .line 187
    const/16 v0, 0x9

    .line 188
    .line 189
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/16 v1, 0xb

    .line 194
    .line 195
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    const/16 v4, 0xa

    .line 200
    .line 201
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    const/16 v5, 0x8

    .line 206
    .line 207
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {p2, v0, v1, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 220
    .line 221
    const/16 v0, 0x11

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 236
    .line 237
    const/16 v0, 0x12

    .line 238
    .line 239
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    .line 248
    .line 249
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f1200e5

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->d:Ljava/lang/String;

    .line 9
    .line 10
    const v0, 0x7f1200e6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->e:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 25
    .line 26
    const v1, 0x7f0a03c4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a03c5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->g:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onLayout(ZIIII)V
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
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->g:Z

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->g:Z

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    sget p3, Lcom/join/android/app/common/view/CollapsibleTextView;->h:I

    .line 18
    .line 19
    if-gt p2, p3, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:I

    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    const/16 p3, 0x8

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 32
    .line 33
    sget p3, Lcom/join/android/app/common/view/CollapsibleTextView;->h:I

    .line 34
    .line 35
    add-int/2addr p3, p1

    .line 36
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lcom/join/android/app/common/view/CollapsibleTextView$a;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/join/android/app/common/view/CollapsibleTextView$a;-><init>(Lcom/join/android/app/common/view/CollapsibleTextView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setDesc(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/common/view/CollapsibleTextView;->j()V

    return-void
.end method

.method public final setDesc(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "bufferType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/common/view/CollapsibleTextView;->j()V

    return-void
.end method

.method public final setDescOp(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/android/app/common/view/CollapsibleTextView;->j()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
