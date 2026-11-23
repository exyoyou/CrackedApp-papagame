.class Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;


# direct methods
.method constructor <init>(Lcom/papa91/view/FloatingDragger$FloatingDraggedView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr p3, v0

    .line 12
    if-le p2, p3, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr p2, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-gez p2, :cond_1

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    :cond_1
    :goto_0
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr p3, v0

    .line 12
    if-le p2, p3, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr p2, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-gez p2, :cond_1

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    :cond_1
    :goto_0
    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sub-int/2addr v0, p1

    .line 12
    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sub-int/2addr v0, p1

    .line 12
    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/view/FloatingDragger$PositionObservable;->update()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->savePosition()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 6
    .line 7
    if-ne p1, p2, :cond_7

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 14
    .line 15
    iget-object p3, p3, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 16
    .line 17
    iget-object p3, p3, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    const/high16 v1, 0x40000000    # 2.0f

    .line 31
    .line 32
    div-float/2addr v0, v1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-float v2, v2

    .line 38
    div-float/2addr v2, v1

    .line 39
    sub-float/2addr v0, v2

    .line 40
    const/high16 v1, 0x40400000    # 3.0f

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    cmpg-float v0, p2, v0

    .line 44
    .line 45
    if-gez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    div-float/2addr v0, v1

    .line 53
    cmpg-float v0, p2, v0

    .line 54
    .line 55
    if-gez v0, :cond_1

    .line 56
    .line 57
    :cond_0
    const/4 p2, 0x0

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    mul-int/lit8 v0, v0, 0x3

    .line 65
    .line 66
    int-to-float v0, v0

    .line 67
    cmpg-float v0, p3, v0

    .line 68
    .line 69
    if-gez v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    mul-int/lit8 v1, v1, 0x3

    .line 83
    .line 84
    sub-int/2addr v0, v1

    .line 85
    int-to-float v0, v0

    .line 86
    cmpl-float v0, p3, v0

    .line 87
    .line 88
    if-lez v0, :cond_0

    .line 89
    .line 90
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    int-to-float v0, v0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    int-to-float v3, v3

    .line 113
    div-float/2addr v3, v1

    .line 114
    sub-float/2addr v0, v3

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    int-to-float v1, v1

    .line 120
    sub-float/2addr v0, v1

    .line 121
    cmpl-float v0, p2, v0

    .line 122
    .line 123
    if-lez v0, :cond_4

    .line 124
    .line 125
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    :goto_0
    sub-int/2addr p2, v0

    .line 136
    int-to-float p2, p2

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    mul-int/lit8 v0, v0, 0x3

    .line 143
    .line 144
    int-to-float v0, v0

    .line 145
    cmpg-float v0, p3, v0

    .line 146
    .line 147
    if-gez v0, :cond_5

    .line 148
    .line 149
    :goto_1
    const/4 p3, 0x0

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    mul-int/lit8 v1, v1, 0x3

    .line 162
    .line 163
    sub-int/2addr v0, v1

    .line 164
    int-to-float v0, v0

    .line 165
    cmpl-float v0, p3, v0

    .line 166
    .line 167
    if-lez v0, :cond_6

    .line 168
    .line 169
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 170
    .line 171
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :goto_2
    sub-int/2addr p3, v0

    .line 180
    int-to-float p3, p3

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    goto :goto_0

    .line 193
    :goto_3
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 196
    .line 197
    float-to-int p2, p2

    .line 198
    float-to-int p3, p3

    .line 199
    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 205
    .line 206
    .line 207
    :cond_7
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method
