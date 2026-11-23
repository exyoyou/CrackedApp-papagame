.class Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashBaseView$5$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashBaseView$5$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/windmill/sdk/widget/SplashBaseView;->e(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/windmill/sdk/widget/SplashBaseView;->f(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/windmill/sdk/widget/SplashBaseView;->f(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/windmill/sdk/widget/SplashBaseView;->f(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/windmill/sdk/widget/SplashBaseView;->f(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/windmill/sdk/widget/SplashBaseView;->d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/high16 v3, 0x41a00000    # 20.0f

    .line 109
    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    .line 116
    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/16 v3, 0xa

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    .line 123
    .line 124
    const/16 v3, 0xb

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-virtual {v2, v3, v1, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/windmill/sdk/widget/SplashBaseView;->f(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    return-void
.end method
