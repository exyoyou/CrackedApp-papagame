.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f0a0864

    .line 26
    .line 27
    .line 28
    const v4, 0x7f0a0949

    .line 29
    .line 30
    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/facebook/drawee/generic/a;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/facebook/drawee/generic/a;->p()Lcom/facebook/drawee/generic/RoundingParams;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v4, "#FFB38534"

    .line 86
    .line 87
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->p(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const v5, 0x7f07133c

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->q(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->X(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const/4 v4, 0x4

    .line 136
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lcom/facebook/drawee/generic/a;

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/facebook/drawee/generic/a;->p()Lcom/facebook/drawee/generic/RoundingParams;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const/4 v4, 0x0

    .line 166
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->q(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->X(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 176
    .line 177
    .line 178
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_1
    return-void
.end method
