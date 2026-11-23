.class public Lcom/join/mgps/customview/NestedScrollWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "NestedScrollWebView"


# instance fields
.field private b:I

.field private final c:[I

.field private final d:[I

.field private e:I

.field private f:Landroidx/core/view/NestedScrollingChildHelper;


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
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:[I

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->a()V

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:[I

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->a()V

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
            "defStyleAttr"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 10
    iput-object p2, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:[I

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/NestedScrollWebView;->setNestedScrollingEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iput v2, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    float-to-int v3, v3

    .line 19
    iget v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:I

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v1, v6, :cond_4

    .line 31
    .line 32
    if-eq v1, v4, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-eq v1, v0, :cond_4

    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    if-eq v1, v0, :cond_4

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:I

    .line 43
    .line 44
    sub-int/2addr p1, v3

    .line 45
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:[I

    .line 46
    .line 47
    iget-object v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 48
    .line 49
    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/join/mgps/customview/NestedScrollWebView;->dispatchNestedPreScroll(II[I[I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:[I

    .line 56
    .line 57
    aget v1, v1, v6

    .line 58
    .line 59
    sub-int/2addr p1, v1

    .line 60
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 61
    .line 62
    aget v1, v1, v6

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:I

    .line 69
    .line 70
    iget-object v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 71
    .line 72
    aget v4, v4, v6

    .line 73
    .line 74
    add-int/2addr v1, v4

    .line 75
    iput v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:I

    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 82
    .line 83
    aget v4, v4, v6

    .line 84
    .line 85
    sub-int/2addr v3, v4

    .line 86
    iput v3, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:I

    .line 87
    .line 88
    add-int v3, v1, p1

    .line 89
    .line 90
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-int v1, v3, v1

    .line 95
    .line 96
    sub-int v11, p1, v1

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    sub-int v9, v3, v11

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    iget-object v12, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 103
    .line 104
    move-object v7, p0

    .line 105
    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/customview/NestedScrollWebView;->dispatchNestedScroll(IIII[I)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:I

    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 114
    .line 115
    aget v1, v1, v6

    .line 116
    .line 117
    sub-int/2addr p1, v1

    .line 118
    iput p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:I

    .line 119
    .line 120
    int-to-float p1, v1

    .line 121
    invoke-virtual {v0, v5, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:I

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 127
    .line 128
    aget v1, v1, v6

    .line 129
    .line 130
    add-int/2addr p1, v1

    .line 131
    iput p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:I

    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:[I

    .line 134
    .line 135
    aget p1, p1, v6

    .line 136
    .line 137
    if-nez p1, :cond_6

    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 140
    .line 141
    aget p1, p1, v6

    .line 142
    .line 143
    if-nez p1, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    .line 147
    .line 148
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->stopNestedScroll()V

    .line 154
    .line 155
    .line 156
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    goto :goto_0

    .line 161
    :cond_5
    iput v3, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:I

    .line 162
    .line 163
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/NestedScrollWebView;->startNestedScroll(I)Z

    .line 164
    .line 165
    .line 166
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    :cond_6
    :goto_0
    return v2
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
