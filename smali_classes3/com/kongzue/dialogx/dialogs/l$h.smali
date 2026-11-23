.class public Lcom/kongzue/dialogx/dialogs/l$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/RelativeLayout;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/kongzue/dialogx/dialogs/l;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/l;->T0(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/kongzue/dialogx/R$id;->box_root:I

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 21
    .line 22
    sget v0, Lcom/kongzue/dialogx/R$id;->box_body:I

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 31
    .line 32
    sget v0, Lcom/kongzue/dialogx/R$id;->img_dialogx_pop_icon:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialogx_pop_title:I

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->d:Landroid/widget/TextView;

    .line 51
    .line 52
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialogx_pop_message:I

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->e:Landroid/widget/TextView;

    .line 61
    .line 62
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialogx_button:I

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->f:Landroid/widget/TextView;

    .line 71
    .line 72
    sget v0, Lcom/kongzue/dialogx/R$id;->box_custom:I

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/l;->U0(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h;->h:Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l$h;->init()V

    .line 89
    .line 90
    .line 91
    iput-object p0, p1, Lcom/kongzue/dialogx/dialogs/l;->P:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l$h;->b()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method static synthetic c(Lcom/kongzue/dialogx/dialogs/l$h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t0(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->D1(Lcom/kongzue/dialogx/dialogs/l;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {p1, v1}, Lcom/kongzue/dialogx/dialogs/l;->E1(Lcom/kongzue/dialogx/dialogs/l;Z)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 52
    .line 53
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$k;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$k;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->f:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->f:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 72
    .line 73
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$h$a;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/l;->n1(Lcom/kongzue/dialogx/dialogs/l;)[I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aget v1, v1, v2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/l;->o1(Lcom/kongzue/dialogx/dialogs/l;)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x1

    .line 22
    aget v3, v3, v4

    .line 23
    .line 24
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 25
    .line 26
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/l;->p1(Lcom/kongzue/dialogx/dialogs/l;)[I

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x2

    .line 31
    aget v5, v5, v6

    .line 32
    .line 33
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 34
    .line 35
    invoke-static {v7}, Lcom/kongzue/dialogx/dialogs/l;->q1(Lcom/kongzue/dialogx/dialogs/l;)[I

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v8, 0x3

    .line 40
    aget v7, v7, v8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v3, v5, v7}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setRootPadding(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->s1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->t1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->h:Ljava/util/List;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/view/View;

    .line 87
    .line 88
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/l;->u1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v1, v3}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 115
    .line 116
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 117
    .line 118
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 121
    .line 122
    invoke-virtual {v3, v5, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 137
    .line 138
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 139
    .line 140
    const/high16 v3, -0x40800000    # -1.0f

    .line 141
    .line 142
    cmpl-float v0, v0, v3

    .line 143
    .line 144
    if-lez v0, :cond_4

    .line 145
    .line 146
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 153
    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 167
    .line 168
    iget v3, v3, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 171
    .line 172
    .line 173
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 174
    .line 175
    new-instance v3, Lcom/kongzue/dialogx/dialogs/l$h$i;

    .line 176
    .line 177
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/l$h$i;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 184
    .line 185
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->h:Ljava/util/List;

    .line 189
    .line 190
    if-eqz v0, :cond_4

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_4

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Landroid/view/View;

    .line 207
    .line 208
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 209
    .line 210
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 211
    .line 212
    iget v5, v5, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 213
    .line 214
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-interface {v3, v5}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 223
    .line 224
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->d:Landroid/widget/TextView;

    .line 225
    .line 226
    iget-object v5, v0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 227
    .line 228
    invoke-static {v0, v3, v5}, Lcom/kongzue/dialogx/dialogs/l;->v1(Lcom/kongzue/dialogx/dialogs/l;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 232
    .line 233
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->e:Landroid/widget/TextView;

    .line 234
    .line 235
    iget-object v5, v0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 236
    .line 237
    invoke-static {v0, v3, v5}, Lcom/kongzue/dialogx/dialogs/l;->w1(Lcom/kongzue/dialogx/dialogs/l;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 241
    .line 242
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->f:Landroid/widget/TextView;

    .line 243
    .line 244
    iget-object v5, v0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 245
    .line 246
    invoke-static {v0, v3, v5}, Lcom/kongzue/dialogx/dialogs/l;->x1(Lcom/kongzue/dialogx/dialogs/l;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->d:Landroid/widget/TextView;

    .line 250
    .line 251
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 252
    .line 253
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/l;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 254
    .line 255
    invoke-static {v0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->e:Landroid/widget/TextView;

    .line 259
    .line 260
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 261
    .line 262
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/l;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 263
    .line 264
    invoke-static {v0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->f:Landroid/widget/TextView;

    .line 268
    .line 269
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 270
    .line 271
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 272
    .line 273
    invoke-static {v0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 277
    .line 278
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l;->p0:Landroid/graphics/Bitmap;

    .line 279
    .line 280
    if-eqz v0, :cond_5

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_5

    .line 287
    .line 288
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 294
    .line 295
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 296
    .line 297
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l;->p0:Landroid/graphics/Bitmap;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 304
    .line 305
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/l;->b1:Landroid/graphics/drawable/Drawable;

    .line 306
    .line 307
    if-eqz v3, :cond_6

    .line 308
    .line 309
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 310
    .line 311
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 315
    .line 316
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 317
    .line 318
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l;->b1:Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_6
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 325
    .line 326
    if-eqz v0, :cond_7

    .line 327
    .line 328
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 334
    .line 335
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 336
    .line 337
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    :goto_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 349
    .line 350
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->W:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 351
    .line 352
    sget-object v3, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 353
    .line 354
    const/4 v5, 0x0

    .line 355
    if-ne v1, v3, :cond_9

    .line 356
    .line 357
    iget-boolean v0, v0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 358
    .line 359
    if-eqz v0, :cond_8

    .line 360
    .line 361
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 362
    .line 363
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->d:Landroid/widget/TextView;

    .line 364
    .line 365
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 374
    .line 375
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 380
    .line 381
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 382
    .line 383
    .line 384
    :goto_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 385
    .line 386
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/l;->p1:I

    .line 387
    .line 388
    if-lez v0, :cond_a

    .line 389
    .line 390
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 397
    .line 398
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/l;->p1:I

    .line 399
    .line 400
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 401
    .line 402
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    .line 404
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->c:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .line 408
    .line 409
    :cond_a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 410
    .line 411
    iget-boolean v0, v0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 412
    .line 413
    if-eqz v0, :cond_b

    .line 414
    .line 415
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 416
    .line 417
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$j;

    .line 418
    .line 419
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$j;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_b
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 427
    .line 428
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    .line 430
    .line 431
    :goto_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    .line 439
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 440
    .line 441
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 442
    .line 443
    aget v2, v1, v2

    .line 444
    .line 445
    const/4 v3, -0x1

    .line 446
    if-eq v2, v3, :cond_c

    .line 447
    .line 448
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 449
    .line 450
    :cond_c
    aget v2, v1, v4

    .line 451
    .line 452
    if-eq v2, v3, :cond_d

    .line 453
    .line 454
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 455
    .line 456
    :cond_d
    aget v2, v1, v6

    .line 457
    .line 458
    if-eq v2, v3, :cond_e

    .line 459
    .line 460
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 461
    .line 462
    :cond_e
    aget v1, v1, v8

    .line 463
    .line 464
    if-eq v1, v3, :cond_f

    .line 465
    .line 466
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 467
    .line 468
    :cond_f
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 469
    .line 470
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 474
    .line 475
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->B1(Lcom/kongzue/dialogx/dialogs/l;)V

    .line 476
    .line 477
    .line 478
    return-void
.end method

.method protected d()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    return-object v0
.end method

.method public e(Landroid/view/animation/Animation;)J
    .locals 6
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long v4, v2, v0

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const-wide/16 v2, 0x12c

    .line 36
    .line 37
    :goto_1
    sget-wide v4, Lcom/kongzue/dialogx/dialogs/l;->f2:J

    .line 38
    .line 39
    cmp-long p1, v4, v0

    .line 40
    .line 41
    if-ltz p1, :cond_3

    .line 42
    .line 43
    move-wide v2, v4

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->K1(Lcom/kongzue/dialogx/dialogs/l;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    cmp-long p1, v4, v0

    .line 51
    .line 52
    if-ltz p1, :cond_4

    .line 53
    .line 54
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->L1(Lcom/kongzue/dialogx/dialogs/l;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    :cond_4
    return-wide v2
.end method

.method public f(Landroid/view/animation/Animation;)J
    .locals 6
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long v4, v2, v0

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const-wide/16 v2, 0x12c

    .line 36
    .line 37
    :goto_1
    sget-wide v4, Lcom/kongzue/dialogx/dialogs/l;->g2:J

    .line 38
    .line 39
    cmp-long p1, v4, v0

    .line 40
    .line 41
    if-ltz p1, :cond_3

    .line 42
    .line 43
    move-wide v2, v4

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->I1(Lcom/kongzue/dialogx/dialogs/l;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v4, -0x1

    .line 51
    .line 52
    cmp-long p1, v0, v4

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->J1(Lcom/kongzue/dialogx/dialogs/l;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    :cond_4
    return-wide v2
.end method

.method public init()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->p:Lcom/kongzue/dialogx/util/TextInfo;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->q:Lcom/kongzue/dialogx/util/TextInfo;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 18
    .line 19
    :cond_1
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 26
    .line 27
    :cond_2
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->f1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 34
    .line 35
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->v:Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->r1(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->W()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->V1:Ljava/util/Timer;

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->m4()Lcom/kongzue/dialogx/dialogs/l;

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 91
    .line 92
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$c;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$c;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 109
    .line 110
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 111
    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    sget-object v2, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 115
    .line 116
    iput-object v2, v1, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 117
    .line 118
    :cond_5
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l$g;->a:[I

    .line 119
    .line 120
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    aget v1, v2, v1

    .line 127
    .line 128
    const/16 v2, 0xa

    .line 129
    .line 130
    const/4 v3, 0x1

    .line 131
    const/16 v4, 0xd

    .line 132
    .line 133
    if-eq v1, v3, :cond_8

    .line 134
    .line 135
    const/4 v5, 0x2

    .line 136
    const/16 v6, 0xc

    .line 137
    .line 138
    if-eq v1, v5, :cond_7

    .line 139
    .line 140
    const/4 v3, 0x3

    .line 141
    if-eq v1, v3, :cond_6

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    .line 171
    .line 172
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 178
    .line 179
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$d;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$d;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o(Lcom/kongzue/dialogx/interfaces/z;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 188
    .line 189
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$e;

    .line 190
    .line 191
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$e;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 198
    .line 199
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$f;

    .line 200
    .line 201
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$f;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 208
    .line 209
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$g;

    .line 210
    .line 211
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$g;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->f:Landroid/widget/TextView;

    .line 218
    .line 219
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h$h;

    .line 220
    .line 221
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$h$h;-><init>(Lcom/kongzue/dialogx/dialogs/l$h;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 228
    .line 229
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->m1(Lcom/kongzue/dialogx/dialogs/l;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method
