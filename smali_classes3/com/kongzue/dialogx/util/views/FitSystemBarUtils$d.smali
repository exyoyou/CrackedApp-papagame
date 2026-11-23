.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

.field final synthetic c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 5
    .line 6
    const-string v1, "FitSystemBarUtils: onViewAttachedToWindow"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1e

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v2, v1, :cond_3

    .line 24
    .line 25
    :cond_0
    const/16 v1, 0x17

    .line 26
    .line 27
    if-lt v0, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 45
    .line 46
    new-instance v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, v1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;

    .line 61
    .line 62
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/View;

    .line 74
    .line 75
    new-instance v1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;

    .line 76
    .line 77
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$c;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
