.class public Lcom/join/mgps/adapter/g2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/g2$b;,
        Lcom/join/mgps/adapter/g2$d;,
        Lcom/join/mgps/adapter/g2$c;
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:F

.field h:Lcom/join/mgps/adapter/g2$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/g2;->h:Lcom/join/mgps/adapter/g2$b;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/join/mgps/adapter/g2;->e:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/join/mgps/adapter/g2$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posHolder"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$c;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f071619

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    iget v2, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 24
    .line 25
    mul-float v3, v1, v2

    .line 26
    .line 27
    float-to-int v3, v3

    .line 28
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 29
    .line 30
    mul-float v1, v1, v2

    .line 31
    .line 32
    float-to-int v1, v1

    .line 33
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 34
    .line 35
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$c;->b:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f07133d

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/g2;->c(I)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v3, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 50
    .line 51
    mul-float v2, v2, v3

    .line 52
    .line 53
    const v3, 0x3f6b851f    # 0.92f

    .line 54
    .line 55
    .line 56
    mul-float v2, v2, v3

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    int-to-float v0, v0

    .line 81
    iget-object v2, p1, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 82
    .line 83
    iget v4, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 84
    .line 85
    mul-float v5, v0, v4

    .line 86
    .line 87
    float-to-int v5, v5

    .line 88
    mul-float v0, v0, v4

    .line 89
    .line 90
    float-to-int v0, v0

    .line 91
    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/customview/VipView;->setSize(II)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$c;->k:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    int-to-float v1, v1

    .line 113
    iget v2, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 114
    .line 115
    mul-float v4, v1, v2

    .line 116
    .line 117
    float-to-int v4, v4

    .line 118
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 119
    .line 120
    mul-float v1, v1, v2

    .line 121
    .line 122
    float-to-int v1, v1

    .line 123
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 124
    .line 125
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$c;->k:Landroid/widget/ImageView;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$c;->c:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const v2, 0x7f0711b5

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    int-to-float v1, v1

    .line 152
    iget v2, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 153
    .line 154
    mul-float v4, v1, v2

    .line 155
    .line 156
    mul-float v4, v4, v3

    .line 157
    .line 158
    float-to-int v4, v4

    .line 159
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 160
    .line 161
    mul-float v4, v1, v2

    .line 162
    .line 163
    mul-float v4, v4, v3

    .line 164
    .line 165
    float-to-int v4, v4

    .line 166
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    .line 168
    mul-float v4, v1, v2

    .line 169
    .line 170
    mul-float v4, v4, v3

    .line 171
    .line 172
    float-to-int v4, v4

    .line 173
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 174
    .line 175
    mul-float v1, v1, v2

    .line 176
    .line 177
    mul-float v1, v1, v3

    .line 178
    .line 179
    float-to-int v1, v1

    .line 180
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 181
    .line 182
    iget-object p1, p1, Lcom/join/mgps/adapter/g2$c;->c:Landroid/view/View;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method private b(Lcom/join/mgps/adapter/g2$d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$d;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    const v1, 0x7f071369

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/g2;->c(I)F

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 11
    .line 12
    mul-float v2, v2, v3

    .line 13
    .line 14
    const v3, 0x3f6b851f    # 0.92f

    .line 15
    .line 16
    .line 17
    mul-float v2, v2, v3

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$d;->k:Landroid/widget/TextView;

    .line 24
    .line 25
    const v2, 0x7f07133d

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2}, Lcom/join/mgps/adapter/g2;->c(I)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget v6, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 33
    .line 34
    mul-float v5, v5, v6

    .line 35
    .line 36
    mul-float v5, v5, v3

    .line 37
    .line 38
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 42
    .line 43
    invoke-direct {p0, v2}, Lcom/join/mgps/adapter/g2;->c(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget v5, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 48
    .line 49
    mul-float v2, v2, v5

    .line 50
    .line 51
    mul-float v2, v2, v3

    .line 52
    .line 53
    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$d;->p:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const v3, 0x7f071353

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    int-to-float v2, v2

    .line 78
    iget v3, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 79
    .line 80
    mul-float v4, v2, v3

    .line 81
    .line 82
    float-to-int v4, v4

    .line 83
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 84
    .line 85
    mul-float v2, v2, v3

    .line 86
    .line 87
    float-to-int v2, v2

    .line 88
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 89
    .line 90
    iget-object v2, p1, Lcom/join/mgps/adapter/g2$d;->p:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p1, Lcom/join/mgps/adapter/g2$d;->q:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    int-to-float v1, v1

    .line 114
    iget v2, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 115
    .line 116
    mul-float v3, v1, v2

    .line 117
    .line 118
    float-to-int v3, v3

    .line 119
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 120
    .line 121
    mul-float v1, v1, v2

    .line 122
    .line 123
    float-to-int v1, v1

    .line 124
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 125
    .line 126
    iget-object p1, p1, Lcom/join/mgps/adapter/g2$d;->q:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private c(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    return p1
.end method

.method private g(Landroid/widget/ImageView;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ivProficiencyLevel",
            "borderView",
            "leve"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    packed-switch p3, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 p3, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f080cf9

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const p3, 0x7f080d02

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    const p1, 0x7f080d03

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const p3, 0x7f080cfc

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    const p1, 0x7f080cfd

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    const p3, 0x7f080cfe

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    const p1, 0x7f080cff

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    const p3, 0x7f080cfa

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    .line 76
    .line 77
    const p1, 0x7f080cfb

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    const p3, 0x7f080d00

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    const p1, 0x7f080d01

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    const p3, 0x7f080d04

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    const p1, 0x7f08023e

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(Lcom/join/mgps/adapter/g2$d;Lapp/mgsim/arena/SimpleWrapperRoom;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "simpleWrapperRoom"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->f:Landroid/widget/TextView;

    .line 4
    .line 5
    const v2, 0x7f071468

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/adapter/g2;->j(Landroid/view/View;I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/g2;->b(Lcom/join/mgps/adapter/g2$d;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->m:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->i:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->l:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->m:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 42
    .line 43
    new-array v6, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    aput-object v7, v6, v4

    .line 54
    .line 55
    const v7, 0x7f1203c2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->m:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->i:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->f:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->g:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->g:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->h:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->h:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :goto_2
    const/4 v1, 0x0

    .line 120
    const/4 v5, 0x0

    .line 121
    :goto_3
    const-string v6, ""

    .line 122
    .line 123
    const/4 v7, 0x4

    .line 124
    if-ge v1, v7, :cond_13

    .line 125
    .line 126
    iget-object v7, p1, Lcom/join/mgps/adapter/g2$d;->r:[Lcom/join/mgps/adapter/g2$c;

    .line 127
    .line 128
    aget-object v7, v7, v1

    .line 129
    .line 130
    invoke-direct {p0, v7}, Lcom/join/mgps/adapter/g2;->a(Lcom/join/mgps/adapter/g2$c;)V

    .line 131
    .line 132
    .line 133
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 134
    .line 135
    invoke-virtual {v8, v4, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    const-string v9, "newarena account "

    .line 143
    .line 144
    if-lt v1, v8, :cond_9

    .line 145
    .line 146
    if-nez v1, :cond_8

    .line 147
    .line 148
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 149
    .line 150
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->h:Landroid/widget/ImageView;

    .line 154
    .line 155
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-static {v8, v10}, Lcom/join/android/app/common/utils/l;->l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->k:Landroid/widget/ImageView;

    .line 168
    .line 169
    iget-object v10, v7, Lcom/join/mgps/adapter/g2$c;->l:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {v0, v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v11}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    invoke-direct {p0, v8, v10, v11}, Lcom/join/mgps/adapter/g2;->g(Landroid/widget/ImageView;Landroid/view/View;I)V

    .line 180
    .line 181
    .line 182
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 183
    .line 184
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    invoke-virtual {v8, v10, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 198
    .line 199
    .line 200
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->f:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_3

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_4

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_5

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    if-eqz v8, :cond_6

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :goto_4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_7

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v10, "uid="

    .line 281
    .line 282
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v6, "  "

    .line 293
    .line 294
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-static {v9, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_7
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :cond_8
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->a:Landroid/view/View;

    .line 323
    .line 324
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_8

    .line 328
    .line 329
    :cond_9
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->a:Landroid/view/View;

    .line 330
    .line 331
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    if-eqz v8, :cond_a

    .line 347
    .line 348
    new-instance v8, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v10, "uid ="

    .line 354
    .line 355
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-static {v9, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_a
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 373
    .line 374
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->k:Landroid/widget/ImageView;

    .line 382
    .line 383
    iget-object v9, v7, Lcom/join/mgps/adapter/g2$c;->l:Landroid/view/View;

    .line 384
    .line 385
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    invoke-direct {p0, v8, v9, v10}, Lcom/join/mgps/adapter/g2;->g(Landroid/widget/ImageView;Landroid/view/View;I)V

    .line 390
    .line 391
    .line 392
    iget-object v8, p1, Lcom/join/mgps/adapter/g2$d;->n:Landroid/view/View;

    .line 393
    .line 394
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    const/4 v9, 0x3

    .line 402
    if-le v8, v9, :cond_b

    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_b
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    const/4 v9, 0x2

    .line 410
    if-ne v8, v9, :cond_c

    .line 411
    .line 412
    iget-object v8, p1, Lcom/join/mgps/adapter/g2$d;->n:Landroid/view/View;

    .line 413
    .line 414
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    iget-object v8, p1, Lcom/join/mgps/adapter/g2$d;->n:Landroid/view/View;

    .line 418
    .line 419
    const v9, 0x7f080e68

    .line 420
    .line 421
    .line 422
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 423
    .line 424
    .line 425
    :cond_c
    :goto_5
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    if-eqz v8, :cond_11

    .line 430
    .line 431
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 432
    .line 433
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->h:Landroid/widget/ImageView;

    .line 437
    .line 438
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 442
    .line 443
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    invoke-static {v8, v9}, Lcom/join/android/app/common/utils/l;->l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 451
    .line 452
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    .line 456
    .line 457
    .line 458
    move-result-object v8

    .line 459
    sget-object v9, Lcom/papa91/battle/protocol/Platform;->PC:Lcom/papa91/battle/protocol/Platform;

    .line 460
    .line 461
    if-ne v8, v9, :cond_d

    .line 462
    .line 463
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 464
    .line 465
    const v9, 0x7f080aad

    .line 466
    .line 467
    .line 468
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_d
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    sget-object v9, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    .line 477
    .line 478
    if-ne v8, v9, :cond_e

    .line 479
    .line 480
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 481
    .line 482
    const v9, 0x7f080aae

    .line 483
    .line 484
    .line 485
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_e
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 490
    .line 491
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    :goto_6
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 495
    .line 496
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 500
    .line 501
    .line 502
    move-result v8

    .line 503
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    .line 504
    .line 505
    .line 506
    move-result v9

    .line 507
    if-ne v8, v9, :cond_f

    .line 508
    .line 509
    const/4 v8, 0x1

    .line 510
    goto :goto_7

    .line 511
    :cond_f
    const/4 v8, 0x0

    .line 512
    :goto_7
    iget-object v9, v7, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 513
    .line 514
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    invoke-virtual {v9, v10, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 519
    .line 520
    .line 521
    if-eqz v8, :cond_10

    .line 522
    .line 523
    iget-object v5, v7, Lcom/join/mgps/adapter/g2$c;->f:Landroid/widget/ImageView;

    .line 524
    .line 525
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    iget-object v5, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 531
    .line 532
    .line 533
    iget-object v5, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 534
    .line 535
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    .line 541
    .line 542
    const/4 v5, 0x1

    .line 543
    goto :goto_8

    .line 544
    :cond_10
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->f:Landroid/widget/ImageView;

    .line 545
    .line 546
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 550
    .line 551
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    .line 553
    .line 554
    goto :goto_8

    .line 555
    :cond_11
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 556
    .line 557
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 558
    .line 559
    .line 560
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 561
    .line 562
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    .line 564
    .line 565
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->f:Landroid/widget/ImageView;

    .line 566
    .line 567
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 571
    .line 572
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    iget-object v8, v7, Lcom/join/mgps/adapter/g2$c;->h:Landroid/widget/ImageView;

    .line 576
    .line 577
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    if-eqz v6, :cond_12

    .line 585
    .line 586
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->h:Landroid/widget/ImageView;

    .line 587
    .line 588
    iget-object v7, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 589
    .line 590
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    const v8, 0x7f080ab8

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    .line 603
    .line 604
    goto :goto_8

    .line 605
    :cond_12
    iget-object v6, v7, Lcom/join/mgps/adapter/g2$c;->h:Landroid/widget/ImageView;

    .line 606
    .line 607
    iget-object v7, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 608
    .line 609
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 610
    .line 611
    .line 612
    move-result-object v7

    .line 613
    const v8, 0x7f080a05

    .line 614
    .line 615
    .line 616
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    .line 622
    .line 623
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 624
    .line 625
    goto/16 :goto_3

    .line 626
    .line 627
    :cond_13
    if-nez v5, :cond_15

    .line 628
    .line 629
    const/4 v1, 0x0

    .line 630
    :goto_9
    if-ge v1, v7, :cond_15

    .line 631
    .line 632
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    if-ge v1, v2, :cond_15

    .line 637
    .line 638
    iget-object v2, p1, Lcom/join/mgps/adapter/g2$d;->r:[Lcom/join/mgps/adapter/g2$c;

    .line 639
    .line 640
    aget-object v2, v2, v1

    .line 641
    .line 642
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-eqz v5, :cond_14

    .line 651
    .line 652
    iget-object v1, v2, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 653
    .line 654
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 655
    .line 656
    .line 657
    move-result v5

    .line 658
    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 659
    .line 660
    .line 661
    iget-object v1, v2, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 662
    .line 663
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    .line 669
    .line 670
    iget-object v1, v2, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 671
    .line 672
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 673
    .line 674
    .line 675
    iget-object v1, v2, Lcom/join/mgps/adapter/g2$c;->f:Landroid/widget/ImageView;

    .line 676
    .line 677
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    goto :goto_a

    .line 681
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 682
    .line 683
    goto :goto_9

    .line 684
    :cond_15
    :goto_a
    iget-object v1, p1, Lcom/join/mgps/adapter/g2$d;->i:Landroid/widget/TextView;

    .line 685
    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    const-string v2, "\u51c6\u5907\u4e2d"

    .line 713
    .line 714
    if-eqz v1, :cond_17

    .line 715
    .line 716
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    sget-object v3, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 721
    .line 722
    if-ne v1, v3, :cond_16

    .line 723
    .line 724
    iget-object v4, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 725
    .line 726
    iget-wide v5, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    .line 727
    .line 728
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 729
    .line 730
    .line 731
    move-result v7

    .line 732
    const-string v8, ""

    .line 733
    .line 734
    const-string v9, ""

    .line 735
    .line 736
    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/customview/CountDownerTextView;->d(JILjava/lang/String;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    goto :goto_b

    .line 740
    :cond_16
    iget-object p2, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 741
    .line 742
    invoke-virtual {p2}, Lcom/join/mgps/customview/CountDownerTextView;->e()V

    .line 743
    .line 744
    .line 745
    iget-object p2, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 746
    .line 747
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    .line 749
    .line 750
    goto :goto_b

    .line 751
    :cond_17
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    sget-object v3, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 756
    .line 757
    if-ne v1, v3, :cond_18

    .line 758
    .line 759
    iget-object v4, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 760
    .line 761
    iget-wide v5, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    .line 762
    .line 763
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 764
    .line 765
    .line 766
    move-result v7

    .line 767
    const-string v8, ""

    .line 768
    .line 769
    const-string v9, ""

    .line 770
    .line 771
    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/customview/CountDownerTextView;->d(JILjava/lang/String;Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    goto :goto_b

    .line 775
    :cond_18
    iget-object p2, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 776
    .line 777
    invoke-virtual {p2}, Lcom/join/mgps/customview/CountDownerTextView;->e()V

    .line 778
    .line 779
    .line 780
    iget-object p2, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 781
    .line 782
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    .line 784
    .line 785
    :goto_b
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    .line 786
    .line 787
    .line 788
    move-result p2

    .line 789
    if-lez p2, :cond_19

    .line 790
    .line 791
    iget-object p1, p1, Lcom/join/mgps/adapter/g2$d;->k:Landroid/widget/TextView;

    .line 792
    .line 793
    new-instance p2, Ljava/lang/StringBuilder;

    .line 794
    .line 795
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    const-string v0, "\u4eba  "

    .line 806
    .line 807
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object p2

    .line 814
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    .line 816
    .line 817
    goto :goto_c

    .line 818
    :cond_19
    iget-object p1, p1, Lcom/join/mgps/adapter/g2$d;->k:Landroid/widget/TextView;

    .line 819
    .line 820
    const-string p2, "0\u4eba "

    .line 821
    .line 822
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    .line 824
    .line 825
    :goto_c
    return-void
.end method

.method private j(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "id"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/g2;->f:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    iget v1, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 19
    .line 20
    mul-float p2, p2, v1

    .line 21
    .line 22
    const v1, 0x3f6b851f    # 0.92f

    .line 23
    .line 24
    .line 25
    mul-float p2, p2, v1

    .line 26
    .line 27
    float-to-int p2, p2

    .line 28
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public d(I)Lapp/mgsim/arena/SimpleWrapperRoom;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public e()Lcom/join/mgps/adapter/g2$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->h:Lcom/join/mgps/adapter/g2$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lcom/join/mgps/adapter/g2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/g2;->h:Lcom/join/mgps/adapter/g2$b;

    .line 2
    .line 3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->e:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public h(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perSize"
        }
    .end annotation

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    .line 3
    .line 4
    cmpl-double v4, v0, v2

    .line 5
    .line 6
    if-lez v4, :cond_0

    .line 7
    .line 8
    const v0, 0x3f6b851f    # 0.92f

    .line 9
    .line 10
    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    :cond_0
    iput p1, p0, Lcom/join/mgps/adapter/g2;->g:F

    .line 14
    .line 15
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g2;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 8
    .line 9
    instance-of v1, p1, Lcom/join/mgps/adapter/g2$d;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    check-cast v1, Lcom/join/mgps/adapter/g2$d;

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/g2;->i(Lcom/join/mgps/adapter/g2$d;Lapp/mgsim/arena/SimpleWrapperRoom;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/adapter/g2$a;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/adapter/g2$a;-><init>(Lcom/join/mgps/adapter/g2;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v0, 0x7f0d047f

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/g2$d;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/adapter/g2$d;-><init>(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/join/mgps/adapter/g2$d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/join/mgps/adapter/g2$d;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/customview/CountDownerTextView;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
