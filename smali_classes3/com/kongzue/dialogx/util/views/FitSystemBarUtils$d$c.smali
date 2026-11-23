.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->b:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->b:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "dimen"

    .line 20
    .line 21
    const-string v3, "android"

    .line 22
    .line 23
    const-string v4, "navigation_bar_height"

    .line 24
    .line 25
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "FitSystemBarUtils: below Android M use support mode: statusBarHeight="

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, ", navigationBarHeight="

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v2, v4}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v6, "    FitSystemBarUtils: deviceOrientation = "

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v4, -0x1

    .line 103
    const/4 v5, 0x1

    .line 104
    if-eq v2, v4, :cond_1

    .line 105
    .line 106
    if-eq v2, v5, :cond_1

    .line 107
    .line 108
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 111
    .line 112
    iput v0, v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 113
    .line 114
    iput v1, v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 120
    .line 121
    iput v1, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 122
    .line 123
    iput v3, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 124
    .line 125
    :goto_1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 126
    .line 127
    iget-object v1, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 130
    .line 131
    invoke-static {v1, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->f(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;->b:Landroid/view/View;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 141
    .line 142
    .line 143
    return v5
.end method
