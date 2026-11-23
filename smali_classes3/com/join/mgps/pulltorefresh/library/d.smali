.class public final Lcom/join/mgps/pulltorefresh/library/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "OverscrollHelper"

.field static final b:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static b(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "deltaX",
            "scrollX",
            "deltaY",
            "scrollY",
            "scrollRange",
            "fuzzyThreshold",
            "scaleFactor",
            "isTouchEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase<",
            "*>;IIIIIIFZ)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/d$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    move v1, p3

    .line 21
    move v2, p4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    move v1, p1

    .line 28
    move v2, p2

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_7

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_7

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_6

    .line 51
    .line 52
    if-nez p8, :cond_6

    .line 53
    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    new-instance p8, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "OverScroll. DeltaX: "

    .line 63
    .line 64
    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ", ScrollX: "

    .line 71
    .line 72
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ", DeltaY: "

    .line 79
    .line 80
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, ", ScrollY: "

    .line 87
    .line 88
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, ", NewY: "

    .line 95
    .line 96
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, ", ScrollRange: "

    .line 103
    .line 104
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, ", CurrentScroll: "

    .line 111
    .line 112
    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    rsub-int/lit8 p1, p6, 0x0

    .line 119
    .line 120
    if-ge v1, p1, :cond_2

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    if-nez v0, :cond_1

    .line 129
    .line 130
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 131
    .line 132
    new-array p2, v5, [Z

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 135
    .line 136
    .line 137
    :cond_1
    add-int/2addr v0, v1

    .line 138
    int-to-float p1, v0

    .line 139
    mul-float p7, p7, p1

    .line 140
    .line 141
    float-to-int p1, p7

    .line 142
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    add-int p1, p5, p6

    .line 147
    .line 148
    if-le v1, p1, :cond_4

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    if-nez v0, :cond_3

    .line 157
    .line 158
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 159
    .line 160
    new-array p2, v5, [Z

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 163
    .line 164
    .line 165
    :cond_3
    add-int/2addr v0, v1

    .line 166
    sub-int/2addr v0, p5

    .line 167
    int-to-float p1, v0

    .line 168
    mul-float p7, p7, p1

    .line 169
    .line 170
    float-to-int p1, p7

    .line 171
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-le p1, p6, :cond_5

    .line 180
    .line 181
    sub-int/2addr v1, p5

    .line 182
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-gt p1, p6, :cond_7

    .line 187
    .line 188
    :cond_5
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 189
    .line 190
    new-array p2, v5, [Z

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_6
    if-eqz p8, :cond_7

    .line 197
    .line 198
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getState()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    if-ne p1, p2, :cond_7

    .line 205
    .line 206
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 207
    .line 208
    new-array p2, v5, [Z

    .line 209
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 211
    .line 212
    .line 213
    :cond_7
    :goto_1
    return-void
.end method

.method public static c(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "deltaX",
            "scrollX",
            "deltaY",
            "scrollY",
            "scrollRange",
            "isTouchEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase<",
            "*>;IIIIIZ)V"
        }
    .end annotation

    .line 1
    const/4 v6, 0x0

    .line 2
    const/high16 v7, 0x3f800000    # 1.0f

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move v8, p6

    .line 11
    invoke-static/range {v0 .. v8}, Lcom/join/mgps/pulltorefresh/library/d;->b(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static d(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "deltaX",
            "scrollX",
            "deltaY",
            "scrollY",
            "isTouchEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase<",
            "*>;IIIIZ)V"
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v6, p5

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/join/mgps/pulltorefresh/library/d;->c(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
