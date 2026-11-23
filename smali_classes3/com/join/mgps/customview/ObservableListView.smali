.class public Lcom/join/mgps/customview/ObservableListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final u:Ljava/lang/String; = "ObservableListView"


# instance fields
.field private b:Lcom/join/mgps/callbacks/o;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/util/SparseIntArray;

.field private g:I

.field private h:I

.field private i:Lcom/join/mgps/enums/ScrollState;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/widget/AbsListView$OnScrollListener;

.field private n:Landroid/widget/AbsListView$OnScrollListener;

.field private o:F

.field private p:F

.field q:F

.field r:F

.field s:Z

.field private t:I


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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->l:Z

    .line 4
    new-instance v0, Lcom/join/mgps/customview/ObservableListView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ObservableListView$a;-><init>(Lcom/join/mgps/customview/ObservableListView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->p:F

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->s:Z

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->t:I

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->c()V

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

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->l:Z

    .line 13
    new-instance p2, Lcom/join/mgps/customview/ObservableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/ObservableListView$a;-><init>(Lcom/join/mgps/customview/ObservableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ObservableListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->p:F

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->s:Z

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->t:I

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->c()V

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

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->l:Z

    .line 22
    new-instance p2, Lcom/join/mgps/customview/ObservableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/ObservableListView$a;-><init>(Lcom/join/mgps/customview/ObservableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ObservableListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 24
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->p:F

    .line 25
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->s:Z

    .line 26
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->t:I

    .line 27
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ObservableListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ObservableListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 9
    .line 10
    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->b:Lcom/join/mgps/callbacks/o;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_11

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-gt v1, v4, :cond_2

    .line 26
    .line 27
    iget-object v4, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ltz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eq v4, v5, :cond_1

    .line 50
    .line 51
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 52
    .line 53
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_11

    .line 74
    .line 75
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    if-ge v3, v0, :cond_6

    .line 79
    .line 80
    sub-int v3, v0, v3

    .line 81
    .line 82
    if-eq v3, v4, :cond_4

    .line 83
    .line 84
    add-int/lit8 v3, v0, -0x1

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    :goto_1
    iget v5, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    .line 88
    .line 89
    if-le v3, v5, :cond_5

    .line 90
    .line 91
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-lez v5, :cond_3

    .line 98
    .line 99
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 100
    .line 101
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    :goto_2
    add-int/2addr v4, v5

    .line 111
    add-int/lit8 v3, v3, -0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const/4 v4, 0x0

    .line 115
    :cond_5
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->e:I

    .line 116
    .line 117
    iget v5, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 118
    .line 119
    add-int/2addr v5, v4

    .line 120
    add-int/2addr v3, v5

    .line 121
    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->e:I

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    if-ge v0, v3, :cond_a

    .line 131
    .line 132
    sub-int v5, v3, v0

    .line 133
    .line 134
    if-eq v5, v4, :cond_8

    .line 135
    .line 136
    sub-int/2addr v3, v4

    .line 137
    const/4 v4, 0x0

    .line 138
    :goto_3
    if-le v3, v0, :cond_9

    .line 139
    .line 140
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 141
    .line 142
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-lez v5, :cond_7

    .line 147
    .line 148
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 149
    .line 150
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    goto :goto_4

    .line 155
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    :goto_4
    add-int/2addr v4, v5

    .line 160
    add-int/lit8 v3, v3, -0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    const/4 v4, 0x0

    .line 164
    :cond_9
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->e:I

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    add-int/2addr v5, v4

    .line 171
    sub-int/2addr v3, v5

    .line 172
    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->e:I

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_a
    if-nez v0, :cond_b

    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 188
    .line 189
    :cond_b
    :goto_5
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 190
    .line 191
    if-gez v3, :cond_c

    .line 192
    .line 193
    iput v2, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 194
    .line 195
    :cond_c
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->e:I

    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    sub-int/2addr v3, v4

    .line 202
    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->h:I

    .line 203
    .line 204
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_d

    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 217
    .line 218
    .line 219
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->b:Lcom/join/mgps/callbacks/o;

    .line 220
    .line 221
    iget v1, p0, Lcom/join/mgps/customview/ObservableListView;->h:I

    .line 222
    .line 223
    iget-boolean v3, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    .line 224
    .line 225
    iget-boolean v4, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 226
    .line 227
    invoke-interface {v0, v1, v3, v4}, Lcom/join/mgps/callbacks/o;->a(IZZ)V

    .line 228
    .line 229
    .line 230
    iget-boolean v0, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    .line 231
    .line 232
    if-eqz v0, :cond_e

    .line 233
    .line 234
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    .line 235
    .line 236
    :cond_e
    iget v0, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    .line 237
    .line 238
    iget v1, p0, Lcom/join/mgps/customview/ObservableListView;->h:I

    .line 239
    .line 240
    if-ge v0, v1, :cond_f

    .line 241
    .line 242
    sget-object v0, Lcom/join/mgps/enums/ScrollState;->UP:Lcom/join/mgps/enums/ScrollState;

    .line 243
    .line 244
    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->i:Lcom/join/mgps/enums/ScrollState;

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_f
    if-ge v1, v0, :cond_10

    .line 248
    .line 249
    sget-object v0, Lcom/join/mgps/enums/ScrollState;->DOWN:Lcom/join/mgps/enums/ScrollState;

    .line 250
    .line 251
    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->i:Lcom/join/mgps/enums/ScrollState;

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_10
    sget-object v0, Lcom/join/mgps/enums/ScrollState;->STOP:Lcom/join/mgps/enums/ScrollState;

    .line 255
    .line 256
    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->i:Lcom/join/mgps/enums/ScrollState;

    .line 257
    .line 258
    :goto_6
    iput v1, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    .line 259
    .line 260
    :cond_11
    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ObservableListView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 20
    .line 21
    iput v1, p0, Lcom/join/mgps/customview/ObservableListView;->p:F

    .line 22
    .line 23
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/ObservableListView;->l:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->b:Lcom/join/mgps/callbacks/o;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-eq v0, v2, :cond_4

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->b:Lcom/join/mgps/callbacks/o;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/customview/ObservableListView;->i:Lcom/join/mgps/enums/ScrollState;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/join/mgps/callbacks/o;->c(Lcom/join/mgps/enums/ScrollState;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ObservableListView;->s:Z

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->q:F

    .line 41
    .line 42
    sub-float/2addr v0, v3

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v4, p0, Lcom/join/mgps/customview/ObservableListView;->r:F

    .line 52
    .line 53
    sub-float/2addr v3, v4

    .line 54
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    cmpl-float v0, v0, v3

    .line 59
    .line 60
    if-lez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->s:Z

    .line 78
    .line 79
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/ObservableListView;->h:I

    .line 80
    .line 81
    if-nez v0, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/customview/ObservableListView;->s:Z

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 102
    .line 103
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->q:F

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->r:F

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    return p1
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ObservableListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollViewCallbacks(Lcom/join/mgps/callbacks/o;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ObservableListView;->b:Lcom/join/mgps/callbacks/o;

    .line 2
    .line 3
    return-void
.end method
