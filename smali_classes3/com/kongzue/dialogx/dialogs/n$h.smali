.class public Lcom/kongzue/dialogx/dialogs/n$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/TextView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/kongzue/dialogx/dialogs/n;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

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
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/n;->T0(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

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
    check-cast v0, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->c:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialogx_pop_text:I

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->d:Landroid/widget/TextView;

    .line 51
    .line 52
    sget v0, Lcom/kongzue/dialogx/R$id;->box_custom:I

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->e:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->f:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/n;->U0(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n$h;->g:Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n$h;->init()V

    .line 79
    .line 80
    .line 81
    iput-object p0, p1, Lcom/kongzue/dialogx/dialogs/n;->P:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n$h;->b()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method static synthetic c(Lcom/kongzue/dialogx/dialogs/n$h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/n$h;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->BOTTOM:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 16
    .line 17
    iput-object v2, v1, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 18
    .line 19
    :cond_0
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n$g;->a:[I

    .line 20
    .line 21
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v1, v2, v1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    const/16 v4, 0xd

    .line 33
    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

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
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/n;->l1(Lcom/kongzue/dialogx/dialogs/n;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/n;->m1(Lcom/kongzue/dialogx/dialogs/n;Z)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 35
    .line 36
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n$h$h;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n$h$h;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

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
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/n;->Y0(Lcom/kongzue/dialogx/dialogs/n;)[I

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    aget v1, v1, v2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/n;->Z0(Lcom/kongzue/dialogx/dialogs/n;)[I

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x1

    .line 33
    aget v3, v3, v4

    .line 34
    .line 35
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 36
    .line 37
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/n;->a1(Lcom/kongzue/dialogx/dialogs/n;)[I

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x2

    .line 42
    aget v5, v5, v6

    .line 43
    .line 44
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 45
    .line 46
    invoke-static {v7}, Lcom/kongzue/dialogx/dialogs/n;->b1(Lcom/kongzue/dialogx/dialogs/n;)[I

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/4 v8, 0x3

    .line 51
    aget v7, v7, v8

    .line 52
    .line 53
    invoke-virtual {v0, v1, v3, v5, v7}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setRootPadding(IIII)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->c1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->d1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->f:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->e1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->g:Ljava/util/List;

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/view/View;

    .line 113
    .line 114
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 117
    .line 118
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/n;->g1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v1, v3}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 129
    .line 130
    const/16 v1, 0x8

    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 141
    .line 142
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/n$h;->e:Landroid/widget/RelativeLayout;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 147
    .line 148
    invoke-virtual {v3, v5, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->e:Landroid/widget/RelativeLayout;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->e:Landroid/widget/RelativeLayout;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :goto_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 163
    .line 164
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/n$h;->d:Landroid/widget/TextView;

    .line 165
    .line 166
    iget-object v5, v0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 167
    .line 168
    invoke-static {v0, v3, v5}, Lcom/kongzue/dialogx/dialogs/n;->h1(Lcom/kongzue/dialogx/dialogs/n;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/n$h;->f:Landroid/widget/TextView;

    .line 174
    .line 175
    iget-object v5, v0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-static {v0, v3, v5}, Lcom/kongzue/dialogx/dialogs/n;->i1(Lcom/kongzue/dialogx/dialogs/n;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->d:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 183
    .line 184
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/n;->b1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 185
    .line 186
    invoke-static {v0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->f:Landroid/widget/TextView;

    .line 190
    .line 191
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 192
    .line 193
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 194
    .line 195
    invoke-static {v0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 199
    .line 200
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    if-eqz v0, :cond_4

    .line 204
    .line 205
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->c:Landroid/widget/ImageView;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->c:Landroid/widget/ImageView;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 213
    .line 214
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->w2()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_3

    .line 226
    .line 227
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->c:Landroid/widget/ImageView;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->d:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->c:Landroid/widget/ImageView;

    .line 240
    .line 241
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->c:Landroid/widget/ImageView;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    :goto_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 251
    .line 252
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 253
    .line 254
    const/high16 v1, -0x40800000    # -1.0f

    .line 255
    .line 256
    cmpl-float v0, v0, v1

    .line 257
    .line 258
    if-lez v0, :cond_6

    .line 259
    .line 260
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 267
    .line 268
    if-eqz v0, :cond_5

    .line 269
    .line 270
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 277
    .line 278
    if-eqz v0, :cond_5

    .line 279
    .line 280
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 281
    .line 282
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 285
    .line 286
    .line 287
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 288
    .line 289
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$f;

    .line 290
    .line 291
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$f;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->g:Ljava/util/List;

    .line 303
    .line 304
    if-eqz v0, :cond_6

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_6

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Landroid/view/View;

    .line 321
    .line 322
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 323
    .line 324
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 325
    .line 326
    iget v5, v5, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 327
    .line 328
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-interface {v1, v5}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 337
    .line 338
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 339
    .line 340
    if-eqz v0, :cond_7

    .line 341
    .line 342
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 343
    .line 344
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$g;

    .line 345
    .line 346
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$g;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 354
    .line 355
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 359
    .line 360
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 361
    .line 362
    .line 363
    :goto_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 364
    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    .line 371
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 372
    .line 373
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 374
    .line 375
    aget v2, v1, v2

    .line 376
    .line 377
    const/4 v3, -0x1

    .line 378
    if-eq v2, v3, :cond_8

    .line 379
    .line 380
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 381
    .line 382
    :cond_8
    aget v2, v1, v4

    .line 383
    .line 384
    if-eq v2, v3, :cond_9

    .line 385
    .line 386
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 387
    .line 388
    :cond_9
    aget v2, v1, v6

    .line 389
    .line 390
    if-eq v2, v3, :cond_a

    .line 391
    .line 392
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 393
    .line 394
    :cond_a
    aget v1, v1, v8

    .line 395
    .line 396
    if-eq v1, v3, :cond_b

    .line 397
    .line 398
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 399
    .line 400
    :cond_b
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 401
    .line 402
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 406
    .line 407
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->k1(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 408
    .line 409
    .line 410
    :cond_c
    :goto_5
    return-void
.end method

.method protected e()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->X:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$i;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$i;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->X:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->X:Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    return-object v0
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

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
    sget-wide v4, Lcom/kongzue/dialogx/dialogs/n;->L1:J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/n;->t1(Lcom/kongzue/dialogx/dialogs/n;)J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/n;->u1(Lcom/kongzue/dialogx/dialogs/n;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    :cond_4
    return-wide v2
.end method

.method public g(Landroid/view/animation/Animation;)J
    .locals 6
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

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
    sget-wide v4, Lcom/kongzue/dialogx/dialogs/n;->R1:J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/n;->q1(Lcom/kongzue/dialogx/dialogs/n;)J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/n;->s1(Lcom/kongzue/dialogx/dialogs/n;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    :cond_4
    return-wide v2
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->W()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->b1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->B:Lcom/kongzue/dialogx/util/TextInfo;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->b1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 34
    .line 35
    :cond_1
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->f1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 42
    .line 43
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->v:Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->r1(Lcom/kongzue/dialogx/dialogs/n;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 49
    .line 50
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->l1:Ljava/util/Timer;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->M3()Lcom/kongzue/dialogx/dialogs/n;

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 73
    .line 74
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$a;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/n$h;->d()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 86
    .line 87
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$b;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o(Lcom/kongzue/dialogx/interfaces/z;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 96
    .line 97
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$c;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$c;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 106
    .line 107
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$d;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$d;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->f:Landroid/widget/TextView;

    .line 116
    .line 117
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h$e;

    .line 118
    .line 119
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$h$e;-><init>(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->X0(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
