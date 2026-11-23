.class public Lcom/join/mgps/customview/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DrawAllocation"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
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
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 6
    .line 7
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->c:I

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/customview/FlowLayout;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/join/mgps/customview/FlowLayout;->g:Ljava/util/List;

    .line 36
    .line 37
    const/16 p1, 0x64

    .line 38
    .line 39
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->h:I

    .line 40
    .line 41
    return-void
.end method

.method private a(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromIndex"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/customview/FlowLayout;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    .line 46
    .line 47
    .line 48
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-ne v2, p0, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/FlowLayout;->e:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/FlowLayout;->e:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getHorizontalDivider()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalDivider()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/FlowLayout;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->g:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v4, v0, Lcom/join/mgps/customview/FlowLayout;->h:I

    .line 27
    .line 28
    if-gtz v4, :cond_0

    .line 29
    .line 30
    const v4, 0x7fffffff

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x1

    .line 36
    const/4 v10, 0x0

    .line 37
    :goto_0
    const/16 v11, 0x8

    .line 38
    .line 39
    if-ge v7, v3, :cond_5

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    if-ne v13, v11, :cond_1

    .line 50
    .line 51
    move/from16 p4, v3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .line 60
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    add-int/lit8 v6, v3, -0x1

    .line 69
    .line 70
    if-ne v6, v7, :cond_2

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget v6, v0, Lcom/join/mgps/customview/FlowLayout;->c:I

    .line 75
    .line 76
    :goto_1
    iget v11, v0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 77
    .line 78
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 79
    .line 80
    add-int/2addr v5, v14

    .line 81
    move/from16 p4, v3

    .line 82
    .line 83
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    .line 85
    add-int/2addr v5, v3

    .line 86
    add-int/2addr v5, v8

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    sub-int v3, v1, v3

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 94
    .line 95
    .line 96
    move-result v16

    .line 97
    sub-int v3, v3, v16

    .line 98
    .line 99
    if-le v5, v3, :cond_4

    .line 100
    .line 101
    if-lt v9, v4, :cond_3

    .line 102
    .line 103
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->g:Ljava/util/List;

    .line 104
    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v7}, Lcom/join/mgps/customview/FlowLayout;->a(I)V

    .line 118
    .line 119
    .line 120
    const/4 v6, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    iget-object v3, v0, Lcom/join/mgps/customview/FlowLayout;->g:Ljava/util/List;

    .line 123
    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v3, v0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v2, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v9, v9, 0x1

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    :cond_4
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 145
    .line 146
    add-int/2addr v14, v3

    .line 147
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 148
    .line 149
    add-int/2addr v14, v3

    .line 150
    add-int/2addr v14, v11

    .line 151
    add-int/2addr v8, v14

    .line 152
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    .line 154
    add-int/2addr v15, v3

    .line 155
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 156
    .line 157
    add-int/2addr v15, v3

    .line 158
    add-int/2addr v15, v6

    .line 159
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    move/from16 v3, p4

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_5
    const/4 v6, 0x0

    .line 173
    :goto_3
    if-nez v6, :cond_6

    .line 174
    .line 175
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->g:Ljava/util/List;

    .line 176
    .line 177
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    const/4 v2, 0x0

    .line 194
    add-int/2addr v1, v2

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    add-int/2addr v3, v2

    .line 200
    iget-object v4, v0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/4 v5, 0x0

    .line 207
    :goto_4
    if-ge v5, v4, :cond_9

    .line 208
    .line 209
    iget-object v6, v0, Lcom/join/mgps/customview/FlowLayout;->f:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/util/List;

    .line 216
    .line 217
    iget-object v7, v0, Lcom/join/mgps/customview/FlowLayout;->g:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    const/4 v8, 0x0

    .line 230
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-ge v8, v9, :cond_8

    .line 235
    .line 236
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    check-cast v9, Landroid/view/View;

    .line 241
    .line 242
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    const/16 v11, 0x8

    .line 247
    .line 248
    if-ne v10, v11, :cond_7

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    .line 257
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 258
    .line 259
    add-int/2addr v12, v3

    .line 260
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 261
    .line 262
    add-int/2addr v13, v1

    .line 263
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    add-int/2addr v14, v12

    .line 268
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    add-int/2addr v15, v13

    .line 273
    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 281
    .line 282
    add-int/2addr v9, v12

    .line 283
    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 284
    .line 285
    add-int/2addr v9, v10

    .line 286
    iget v10, v0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 287
    .line 288
    add-int/2addr v9, v10

    .line 289
    add-int/2addr v3, v9

    .line 290
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_8
    const/16 v11, 0x8

    .line 294
    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    add-int/2addr v1, v7

    .line 300
    add-int/lit8 v5, v5, 0x1

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/customview/FlowLayout;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    add-int/2addr v7, v8

    .line 42
    const/4 v8, 0x0

    .line 43
    add-int/2addr v7, v8

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    iget v10, v0, Lcom/join/mgps/customview/FlowLayout;->h:I

    .line 49
    .line 50
    if-gtz v10, :cond_0

    .line 51
    .line 52
    const v10, 0x7fffffff

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/2addr v5, v6

    .line 56
    sub-int v5, v1, v5

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    :goto_0
    if-ge v11, v9, :cond_9

    .line 65
    .line 66
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    move/from16 v16, v1

    .line 71
    .line 72
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    move/from16 v17, v2

    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    if-ne v1, v2, :cond_1

    .line 81
    .line 82
    move/from16 v18, v4

    .line 83
    .line 84
    const/high16 v1, 0x40000000    # 2.0f

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v8, v4, v1}, Landroid/view/View;->measure(II)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v1, v9, -0x1

    .line 99
    .line 100
    if-ne v11, v1, :cond_2

    .line 101
    .line 102
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-nez v13, :cond_2

    .line 107
    .line 108
    add-int/2addr v7, v15

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move/from16 v18, v4

    .line 111
    .line 112
    if-eqz v13, :cond_3

    .line 113
    .line 114
    const/high16 v1, 0x40000000    # 2.0f

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v8, v4, v1}, Landroid/view/View;->measure(II)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 129
    goto/16 :goto_4

    .line 130
    .line 131
    :cond_3
    move/from16 v1, p1

    .line 132
    .line 133
    move/from16 v2, p2

    .line 134
    .line 135
    invoke-virtual {v0, v8, v1, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    .line 144
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    .line 146
    .line 147
    move-result v19

    .line 148
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 149
    .line 150
    add-int v19, v19, v1

    .line 151
    .line 152
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 153
    .line 154
    add-int v1, v19, v1

    .line 155
    .line 156
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 157
    .line 158
    .line 159
    move-result v19

    .line 160
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 161
    .line 162
    add-int v19, v19, v2

    .line 163
    .line 164
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 165
    .line 166
    add-int v2, v19, v2

    .line 167
    .line 168
    iget v4, v0, Lcom/join/mgps/customview/FlowLayout;->c:I

    .line 169
    .line 170
    move/from16 v19, v12

    .line 171
    .line 172
    add-int v12, v14, v1

    .line 173
    .line 174
    if-le v12, v5, :cond_7

    .line 175
    .line 176
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-nez v13, :cond_5

    .line 181
    .line 182
    add-int/2addr v7, v15

    .line 183
    if-lt v6, v10, :cond_4

    .line 184
    .line 185
    const/4 v13, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    :cond_5
    :goto_2
    if-nez v13, :cond_6

    .line 190
    .line 191
    iget v8, v0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 192
    .line 193
    add-int/2addr v1, v8

    .line 194
    add-int/2addr v2, v4

    .line 195
    move v14, v1

    .line 196
    move v15, v2

    .line 197
    const/4 v4, 0x0

    .line 198
    goto :goto_3

    .line 199
    :cond_6
    const/high16 v1, 0x40000000    # 2.0f

    .line 200
    .line 201
    const/4 v4, 0x0

    .line 202
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v1, v9, -0x1

    .line 214
    .line 215
    if-ne v11, v1, :cond_8

    .line 216
    .line 217
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    goto :goto_4

    .line 222
    :cond_7
    const/4 v4, 0x0

    .line 223
    iget v8, v0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 224
    .line 225
    add-int/2addr v1, v8

    .line 226
    add-int/2addr v14, v1

    .line 227
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    move v15, v1

    .line 232
    move/from16 v12, v19

    .line 233
    .line 234
    :goto_3
    add-int/lit8 v1, v9, -0x1

    .line 235
    .line 236
    if-ne v11, v1, :cond_8

    .line 237
    .line 238
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-nez v13, :cond_8

    .line 243
    .line 244
    add-int/2addr v7, v15

    .line 245
    :cond_8
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 246
    .line 247
    move/from16 v1, v16

    .line 248
    .line 249
    move/from16 v2, v17

    .line 250
    .line 251
    move/from16 v4, v18

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_9
    move/from16 v16, v1

    .line 256
    .line 257
    move/from16 v17, v2

    .line 258
    .line 259
    move/from16 v18, v4

    .line 260
    .line 261
    move/from16 v19, v12

    .line 262
    .line 263
    const/high16 v1, 0x40000000    # 2.0f

    .line 264
    .line 265
    if-ne v3, v1, :cond_a

    .line 266
    .line 267
    move/from16 v2, v16

    .line 268
    .line 269
    move/from16 v3, v18

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_a
    move/from16 v3, v18

    .line 273
    .line 274
    move/from16 v2, v19

    .line 275
    .line 276
    :goto_5
    if-ne v3, v1, :cond_b

    .line 277
    .line 278
    move/from16 v7, v17

    .line 279
    .line 280
    :cond_b
    invoke-virtual {v0, v2, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 281
    .line 282
    .line 283
    return-void
.end method

.method public setHorizontalDivider(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalDivider"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setNumberRows(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/FlowLayout;->h:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->h:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVerticalDivider(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalDivider"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->c:I

    .line 2
    .line 3
    return-void
.end method
