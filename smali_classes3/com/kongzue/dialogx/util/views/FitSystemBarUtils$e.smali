.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->b:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->b:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v3, 0x1e

    .line 20
    .line 21
    if-lt v2, v3, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 24
    .line 25
    invoke-static {v4}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->g(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Landroidx/core/view/z;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-lt v2, v3, :cond_1

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-static {v4}, Landroidx/core/view/t2;->a(Landroid/view/WindowInsetsController;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    and-int/lit8 v2, v2, 0x10

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    sub-int/2addr v1, v0

    .line 52
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->h(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eq v1, v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->i(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;I)I

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "    FitSystemBarUtils: specialModeImeHeight="

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->h(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->j(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method
