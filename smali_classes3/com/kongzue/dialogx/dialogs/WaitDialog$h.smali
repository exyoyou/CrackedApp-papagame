.class public Lcom/kongzue/dialogx/dialogs/WaitDialog$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

.field public c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Lcom/kongzue/dialogx/interfaces/b0;

.field public f:Landroid/widget/RelativeLayout;

.field public g:Landroid/widget/TextView;

.field private h:I

.field private i:F

.field final synthetic j:Lcom/kongzue/dialogx/dialogs/WaitDialog;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->i:F

    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)V
    .locals 4

    .line 4
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->i:F

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)V

    .line 7
    sget v0, Lcom/kongzue/dialogx/R$id;->box_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 8
    sget v0, Lcom/kongzue/dialogx/R$id;->bkg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 9
    sget v0, Lcom/kongzue/dialogx/R$id;->box_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    .line 10
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X0(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->f(Landroid/content/Context;Z)Lcom/kongzue/dialogx/interfaces/b0;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lcom/kongzue/dialogx/util/views/ProgressView;

    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/util/views/ProgressView;-><init>(Landroid/content/Context;)V

    .line 12
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/kongzue/dialogx/interfaces/b0;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 13
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    sget v0, Lcom/kongzue/dialogx/R$id;->box_customView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f:Landroid/widget/RelativeLayout;

    .line 15
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->init()V

    .line 17
    invoke-static {p1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b()V

    return-void
.end method

.method private c(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$g;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_0
    sget-object p1, Lcom/kongzue/dialogx/DialogX;->W:Ljava/lang/CharSequence;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    sget-object p1, Lcom/kongzue/dialogx/DialogX;->Y:Ljava/lang/CharSequence;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    sget-object p1, Lcom/kongzue/dialogx/DialogX;->X:Ljava/lang/CharSequence;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_3
    sget-object p1, Lcom/kongzue/dialogx/DialogX;->Z:Ljava/lang/CharSequence;

    .line 33
    .line 34
    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->F1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->G1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 43
    .line 44
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g0()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->t1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    aget v1, v1, v2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->u1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    aget v3, v3, v4

    .line 45
    .line 46
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v6, 0x2

    .line 53
    aget v5, v5, v6

    .line 54
    .line 55
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 56
    .line 57
    invoke-static {v6}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->w1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v7, 0x3

    .line 62
    aget v6, v6, v7

    .line 63
    .line 64
    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setRootPadding(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->K()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->M()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setMinWidth(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->L()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setMinHeight(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a:Ljava/util/List;

    .line 120
    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroid/view/View;

    .line 138
    .line 139
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 142
    .line 143
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->y1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-interface {v1, v3}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget v1, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_wait_bkg:I

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 164
    .line 165
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->h2()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v2()F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->z1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->A1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-virtual {v1, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->d(Z)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_3

    .line 231
    .line 232
    sget v3, Lcom/kongzue/dialogx/R$color;->white:I

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_3
    sget v3, Lcom/kongzue/dialogx/R$color;->black:I

    .line 236
    .line 237
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v0, v1, v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->C1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g:Landroid/widget/TextView;

    .line 250
    .line 251
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 252
    .line 253
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 265
    .line 266
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 267
    .line 268
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-interface {v1, v0}, Lcom/kongzue/dialogx/interfaces/b0;->e(I)Lcom/kongzue/dialogx/interfaces/b0;

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_5

    .line 287
    .line 288
    sget v0, Lcom/kongzue/dialogx/R$color;->white:I

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_5
    sget v0, Lcom/kongzue/dialogx/R$color;->black:I

    .line 292
    .line 293
    :goto_2
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g:Landroid/widget/TextView;

    .line 294
    .line 295
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    .line 307
    .line 308
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 309
    .line 310
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    invoke-interface {v1, v0}, Lcom/kongzue/dialogx/interfaces/b0;->e(I)Lcom/kongzue/dialogx/interfaces/b0;

    .line 321
    .line 322
    .line 323
    :goto_3
    sget-object v0, Lcom/kongzue/dialogx/DialogX;->x:Ljava/lang/Integer;

    .line 324
    .line 325
    if-eqz v0, :cond_6

    .line 326
    .line 327
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-interface {v1, v0}, Lcom/kongzue/dialogx/interfaces/b0;->e(I)Lcom/kongzue/dialogx/interfaces/b0;

    .line 334
    .line 335
    .line 336
    :cond_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 337
    .line 338
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V:F

    .line 339
    .line 340
    const/4 v1, 0x0

    .line 341
    cmpl-float v1, v0, v1

    .line 342
    .line 343
    if-ltz v1, :cond_7

    .line 344
    .line 345
    const/high16 v1, 0x3f800000    # 1.0f

    .line 346
    .line 347
    cmpg-float v1, v0, v1

    .line 348
    .line 349
    if-gtz v1, :cond_7

    .line 350
    .line 351
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->i:F

    .line 352
    .line 353
    cmpl-float v1, v1, v0

    .line 354
    .line 355
    if-eqz v1, :cond_7

    .line 356
    .line 357
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 358
    .line 359
    invoke-interface {v1, v0}, Lcom/kongzue/dialogx/interfaces/b0;->c(F)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 363
    .line 364
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V:F

    .line 365
    .line 366
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->i:F

    .line 367
    .line 368
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 369
    .line 370
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 371
    .line 372
    const/high16 v1, -0x40800000    # -1.0f

    .line 373
    .line 374
    cmpl-float v0, v0, v1

    .line 375
    .line 376
    if-lez v0, :cond_8

    .line 377
    .line 378
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 379
    .line 380
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$d;

    .line 381
    .line 382
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$d;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 389
    .line 390
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a:Ljava/util/List;

    .line 394
    .line 395
    if-eqz v0, :cond_8

    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_8

    .line 406
    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    check-cast v1, Landroid/view/View;

    .line 412
    .line 413
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 414
    .line 415
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 416
    .line 417
    iget v3, v3, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 418
    .line 419
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-interface {v1, v3}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 424
    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 428
    .line 429
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g:Landroid/widget/TextView;

    .line 430
    .line 431
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 432
    .line 433
    if-nez v3, :cond_9

    .line 434
    .line 435
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 436
    .line 437
    invoke-direct {p0, v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Ljava/lang/CharSequence;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    :cond_9
    invoke-static {v0, v1, v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->D1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 442
    .line 443
    .line 444
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g:Landroid/widget/TextView;

    .line 445
    .line 446
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 447
    .line 448
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X:Lcom/kongzue/dialogx/util/TextInfo;

    .line 449
    .line 450
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 451
    .line 452
    .line 453
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y:Ljava/lang/Integer;

    .line 456
    .line 457
    if-eqz v0, :cond_a

    .line 458
    .line 459
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackgroundColor(I)V

    .line 466
    .line 467
    .line 468
    :cond_a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 469
    .line 470
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 471
    .line 472
    const/16 v1, 0x8

    .line 473
    .line 474
    if-eqz v0, :cond_b

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    if-eqz v0, :cond_b

    .line 481
    .line 482
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 483
    .line 484
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 485
    .line 486
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f:Landroid/widget/RelativeLayout;

    .line 487
    .line 488
    invoke-virtual {v3, v4, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 489
    .line 490
    .line 491
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f:Landroid/widget/RelativeLayout;

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_b
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f:Landroid/widget/RelativeLayout;

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .line 506
    .line 507
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    .line 508
    .line 509
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    :goto_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 513
    .line 514
    iget-boolean v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M:Z

    .line 515
    .line 516
    if-eqz v1, :cond_d

    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f0()Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-eqz v0, :cond_c

    .line 523
    .line 524
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 525
    .line 526
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$e;

    .line 527
    .line 528
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$e;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    .line 533
    .line 534
    goto :goto_6

    .line 535
    :cond_c
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 536
    .line 537
    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    goto :goto_6

    .line 542
    :cond_d
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 543
    .line 544
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 545
    .line 546
    .line 547
    :goto_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 548
    .line 549
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->E1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 550
    .line 551
    .line 552
    :cond_e
    :goto_7
    return-void
.end method

.method protected d()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R:Lcom/kongzue/dialogx/interfaces/g;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    sget p1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->q1:I

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    int-to-long v2, p1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->L1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    cmp-long p1, v4, v0

    .line 49
    .line 50
    if-ltz p1, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v2

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
    move-result-wide v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const-wide/16 v0, 0x12c

    .line 36
    .line 37
    :goto_1
    sget p1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r1:I

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    int-to-long v0, p1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->J1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-wide/16 v4, -0x1

    .line 49
    .line 50
    cmp-long p1, v2, v4

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    :cond_4
    return-wide v0
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->h:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->u3(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/kongzue/dialogx/R$id;->box_root:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 26
    .line 27
    sget v1, Lcom/kongzue/dialogx/R$id;->bkg:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 36
    .line 37
    sget v1, Lcom/kongzue/dialogx/R$id;->box_progress:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->S1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->f(Landroid/content/Context;Z)Lcom/kongzue/dialogx/interfaces/b0;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/view/View;

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    new-instance v1, Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v1, v2}, Lcom/kongzue/dialogx/util/views/ProgressView;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    move-object v2, v1

    .line 89
    check-cast v2, Lcom/kongzue/dialogx/interfaces/b0;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .line 97
    const/4 v4, -0x1

    .line 98
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    sget v1, Lcom/kongzue/dialogx/R$id;->box_customView:I

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 111
    .line 112
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f:Landroid/widget/RelativeLayout;

    .line 113
    .line 114
    sget v1, Lcom/kongzue/dialogx/R$id;->txt_info:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/widget/TextView;

    .line 121
    .line 122
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g:Landroid/widget/TextView;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 125
    .line 126
    invoke-static {v1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a:Ljava/util/List;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->init()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 136
    .line 137
    invoke-static {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public h(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->P1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->W()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X:Lcom/kongzue/dialogx/util/TextInfo;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->r:Lcom/kongzue/dialogx/util/TextInfo;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X:Lcom/kongzue/dialogx/util/TextInfo;

    .line 34
    .line 35
    :cond_1
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y0(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 42
    .line 43
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->w:Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Z0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->a1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/view/View;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->b1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a:Ljava/util/List;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    sget v1, Lcom/kongzue/dialogx/R$color;->dialogxWaitBkgDark:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    sget v1, Lcom/kongzue/dialogx/R$color;->dialogxWaitBkgLight:I

    .line 78
    .line 79
    :goto_0
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->c1(Lcom/kongzue/dialogx/dialogs/WaitDialog;I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 88
    .line 89
    const/high16 v2, 0x41700000    # 15.0f

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    int-to-float v1, v1

    .line 96
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->d1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->e1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->c()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    int-to-float v3, v3

    .line 127
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v2, v3, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->g1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->h1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v3, v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->b(Z)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 160
    .line 161
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_4

    .line 166
    .line 167
    sget v4, Lcom/kongzue/dialogx/R$color;->dialogxWaitBkgDark:I

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    sget v4, Lcom/kongzue/dialogx/R$color;->dialogxWaitBkgLight:I

    .line 171
    .line 172
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v2, v3, v4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v2, v3, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :cond_5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a:Ljava/util/List;

    .line 185
    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_8

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Landroid/view/View;

    .line 203
    .line 204
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 205
    .line 206
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 207
    .line 208
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->k1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    if-nez v4, :cond_6

    .line 213
    .line 214
    move-object v4, v0

    .line 215
    goto :goto_3

    .line 216
    :cond_6
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 217
    .line 218
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->l1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    :goto_3
    invoke-interface {v3, v4}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v3, v1}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_7
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 230
    .line 231
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    sget v3, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_wait_bkg:I

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    .line 261
    .line 262
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 263
    .line 264
    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 276
    .line 277
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 278
    .line 279
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 286
    .line 287
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 288
    .line 289
    if-eqz v0, :cond_9

    .line 290
    .line 291
    sget-object v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->NONE:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 292
    .line 293
    if-eq v0, v1, :cond_9

    .line 294
    .line 295
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 296
    .line 297
    invoke-interface {v0}, Lcom/kongzue/dialogx/interfaces/b0;->a()V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 301
    .line 302
    check-cast v0, Landroid/view/View;

    .line 303
    .line 304
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$b;

    .line 305
    .line 306
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 307
    .line 308
    .line 309
    const-wide/16 v2, 0x64

    .line 310
    .line 311
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    .line 313
    .line 314
    :cond_9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 315
    .line 316
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$c;

    .line 317
    .line 318
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$c;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 325
    .line 326
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->s1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 327
    .line 328
    .line 329
    return-void
.end method
