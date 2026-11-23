.class Lcom/join/mgps/customview/ScrollTextViewLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ScrollTextViewLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->a(Lcom/join/mgps/customview/ScrollTextViewLayout;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, ""

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->e(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 82
    .line 83
    int-to-float v1, v1

    .line 84
    int-to-float v0, v0

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-direct {v2, v3, v3, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v0, 0x3e8

    .line 90
    .line 91
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout$b;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
