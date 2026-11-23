.class Lcom/join/mgps/customview/ScrollTextViewLayout$c;
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
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->a(Lcom/join/mgps/customview/ScrollTextViewLayout;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->e(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->e(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    mul-int/lit8 v1, v1, -0x1

    .line 88
    .line 89
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 90
    .line 91
    int-to-float v1, v1

    .line 92
    int-to-float v0, v0

    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-direct {v2, v3, v3, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v0, 0x3e8

    .line 98
    .line 99
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout$c;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
