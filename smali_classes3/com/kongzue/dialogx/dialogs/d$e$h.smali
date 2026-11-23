.class Lcom/kongzue/dialogx/dialogs/d$e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/d$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p9, p7

    .line 2
    sub-int/2addr p5, p3

    .line 3
    if-eq p9, p5, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->e(Lcom/kongzue/dialogx/dialogs/d$e;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getFitSystemBarUtils()Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->y()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->d(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/kongzue/dialogx/dialogs/d$e;->i(Lcom/kongzue/dialogx/dialogs/d$e;)Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    int-to-float p2, p2

    .line 49
    sub-float/2addr p1, p2

    .line 50
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 51
    .line 52
    iget p3, p2, Lcom/kongzue/dialogx/dialogs/d$e;->i:I

    .line 53
    .line 54
    int-to-float p3, p3

    .line 55
    sub-float/2addr p1, p3

    .line 56
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    int-to-float p2, p2

    .line 65
    sub-float/2addr p1, p2

    .line 66
    const/4 p2, 0x0

    .line 67
    cmpg-float p3, p1, p2

    .line 68
    .line 69
    if-gez p3, :cond_0

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    :cond_0
    iget-object p3, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 73
    .line 74
    iget p4, p3, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 75
    .line 76
    cmpl-float p4, p1, p4

    .line 77
    .line 78
    if-eqz p4, :cond_1

    .line 79
    .line 80
    iget-object p3, p3, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    cmpl-float p3, p3, p1

    .line 87
    .line 88
    if-eqz p3, :cond_1

    .line 89
    .line 90
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 91
    .line 92
    iget p3, p2, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 93
    .line 94
    iput p1, p2, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 95
    .line 96
    float-to-int p3, p3

    .line 97
    float-to-int p1, p1

    .line 98
    const/4 p4, 0x1

    .line 99
    invoke-static {p2, p3, p1, p4}, Lcom/kongzue/dialogx/dialogs/d$e;->g(Lcom/kongzue/dialogx/dialogs/d$e;IIZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object p3, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 104
    .line 105
    iget-object p3, p3, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    cmpl-float p3, p3, p1

    .line 112
    .line 113
    if-eqz p3, :cond_2

    .line 114
    .line 115
    cmpl-float p2, p1, p2

    .line 116
    .line 117
    if-eqz p2, :cond_2

    .line 118
    .line 119
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e$h;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 120
    .line 121
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_0
    return-void
.end method
