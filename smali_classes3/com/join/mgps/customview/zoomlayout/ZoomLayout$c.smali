.class Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Lcom/join/mgps/customview/zoomlayout/a;

.field private c:I

.field private d:I

.field private e:Z

.field final synthetic f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->e:Z

    .line 8
    .line 9
    invoke-static {p2}, Lcom/join/mgps/customview/zoomlayout/a;->f(Landroid/content/Context;)Lcom/join/mgps/customview/zoomlayout/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 14
    .line 15
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->c()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->e:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/zoomlayout/a;->c(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method c(II)V
    .locals 12
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
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    cmpg-float v0, v0, v1

    .line 28
    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 34
    .line 35
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-float/2addr v1, v3

    .line 58
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    move v6, v0

    .line 63
    move v7, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v6, v2

    .line 66
    move v7, v6

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 70
    .line 71
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    cmpg-float v0, v0, v1

    .line 94
    .line 95
    if-gez v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 100
    .line 101
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 108
    .line 109
    iget-object v4, v1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 110
    .line 111
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 112
    .line 113
    iget-object v1, v1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 114
    .line 115
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 116
    .line 117
    sub-float/2addr v4, v1

    .line 118
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    move v8, v0

    .line 123
    move v9, v1

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move v8, v3

    .line 126
    move v9, v8

    .line 127
    :goto_1
    iput v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->c:I

    .line 128
    .line 129
    iput v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->d:I

    .line 130
    .line 131
    if-ne v2, v7, :cond_3

    .line 132
    .line 133
    if-eq v3, v9, :cond_2

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->e:Z

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const/4 v11, 0x0

    .line 144
    move v4, p1

    .line 145
    move v5, p2

    .line 146
    invoke-virtual/range {v1 .. v11}, Lcom/join/mgps/customview/zoomlayout/a;->b(IIIIIIIIII)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b()V

    .line 156
    .line 157
    .line 158
    :goto_3
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/a;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/a;->d()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b:Lcom/join/mgps/customview/zoomlayout/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/customview/zoomlayout/a;->e()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 30
    .line 31
    iget v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->c:I

    .line 32
    .line 33
    sub-int/2addr v3, v0

    .line 34
    int-to-float v3, v3

    .line 35
    iget v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->d:I

    .line 36
    .line 37
    sub-int/2addr v4, v1

    .line 38
    int-to-float v4, v4

    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-static {v2, v3, v4, v5}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFZ)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a()V

    .line 53
    .line 54
    .line 55
    :cond_0
    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->c:I

    .line 56
    .line 57
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->d:I

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 60
    .line 61
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->b()V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
