.class public Lcom/kongzue/dialogx/dialogs/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/i;
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

.field public e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

.field final synthetic f:Lcom/kongzue/dialogx/dialogs/i;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

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
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/i;->C1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

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
    check-cast v0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 31
    .line 32
    sget v0, Lcom/kongzue/dialogx/R$id;->box_custom:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->d:Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    sget v0, Lcom/kongzue/dialogx/R$id;->listMenu:I

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/i;->M1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->a:Ljava/util/List;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 65
    .line 66
    const/high16 p2, -0x40800000    # -1.0f

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i$h;->init()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method static synthetic c(Lcom/kongzue/dialogx/dialogs/i$h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/kongzue/dialogx/dialogs/i$h;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/i$h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->J1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->K1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->L1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->a()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/i;->D1(Lcom/kongzue/dialogx/dialogs/i;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/i;->E1(Lcom/kongzue/dialogx/dialogs/i;Z)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 35
    .line 36
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$h$g;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$h$g;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/i;->r1(Lcom/kongzue/dialogx/dialogs/i;)[I

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/i;->t1(Lcom/kongzue/dialogx/dialogs/i;)[I

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
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/i;->u1(Lcom/kongzue/dialogx/dialogs/i;)[I

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
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 56
    .line 57
    invoke-static {v6}, Lcom/kongzue/dialogx/dialogs/i;->v1(Lcom/kongzue/dialogx/dialogs/i;)[I

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/n;->a()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 94
    .line 95
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 96
    .line 97
    if-eq v0, v3, :cond_2

    .line 98
    .line 99
    new-instance v0, Lcom/kongzue/dialogx/util/n;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 102
    .line 103
    iget-object v5, v3, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 110
    .line 111
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 112
    .line 113
    invoke-direct {v0, v5, v3, v6}, Lcom/kongzue/dialogx/util/n;-><init>(Lcom/kongzue/dialogx/dialogs/i;Landroid/content/Context;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, v1, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    .line 132
    .line 133
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 134
    .line 135
    iget-boolean v1, v0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->f0()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 146
    .line 147
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$h$e;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/i$h$e;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 166
    .line 167
    .line 168
    :goto_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->w1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->x1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 189
    .line 190
    .line 191
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 192
    .line 193
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 194
    .line 195
    const/high16 v1, -0x40800000    # -1.0f

    .line 196
    .line 197
    cmpl-float v0, v0, v1

    .line 198
    .line 199
    if-lez v0, :cond_7

    .line 200
    .line 201
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 208
    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 218
    .line 219
    if-eqz v0, :cond_6

    .line 220
    .line 221
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 222
    .line 223
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 226
    .line 227
    .line 228
    :cond_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 229
    .line 230
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$h$f;

    .line 231
    .line 232
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/i$h$f;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->a:Ljava/util/List;

    .line 244
    .line 245
    if-eqz v0, :cond_7

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_7

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Landroid/view/View;

    .line 262
    .line 263
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 264
    .line 265
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 266
    .line 267
    iget v3, v3, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 268
    .line 269
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-interface {v1, v3}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    .line 280
    .line 281
    if-eqz v0, :cond_8

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 290
    .line 291
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    .line 292
    .line 293
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->d:Landroid/widget/RelativeLayout;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 296
    .line 297
    invoke-virtual {v1, v3, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->d:Landroid/widget/RelativeLayout;

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->d:Landroid/widget/RelativeLayout;

    .line 307
    .line 308
    const/16 v1, 0x8

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    :goto_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 314
    .line 315
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 316
    .line 317
    const/4 v1, -0x1

    .line 318
    if-eq v0, v1, :cond_9

    .line 319
    .line 320
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 321
    .line 322
    invoke-virtual {v2, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 323
    .line 324
    .line 325
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 326
    .line 327
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 328
    .line 329
    iget v2, v2, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 330
    .line 331
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 332
    .line 333
    .line 334
    :cond_9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 335
    .line 336
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    .line 337
    .line 338
    if-eq v0, v1, :cond_a

    .line 339
    .line 340
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 346
    .line 347
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 348
    .line 349
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 352
    .line 353
    .line 354
    :cond_a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 355
    .line 356
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->y1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 363
    .line 364
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 365
    .line 366
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->z1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->a:Ljava/util/List;

    .line 378
    .line 379
    if-eqz v0, :cond_b

    .line 380
    .line 381
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_b

    .line 390
    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    check-cast v1, Landroid/view/View;

    .line 396
    .line 397
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 398
    .line 399
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 400
    .line 401
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/i;->A1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-interface {v1, v2}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 406
    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_b
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 410
    .line 411
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/i;->L1:Lcom/kongzue/dialogx/util/k;

    .line 412
    .line 413
    if-eqz v1, :cond_c

    .line 414
    .line 415
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 422
    .line 423
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    invoke-virtual {v1, v0, v3}, Lcom/kongzue/dialogx/util/k;->a(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 435
    .line 436
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 437
    .line 438
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i;->L1:Lcom/kongzue/dialogx/util/k;

    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/k;->f()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 445
    .line 446
    .line 447
    :cond_c
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 448
    .line 449
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->B1(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 450
    .line 451
    .line 452
    :cond_d
    :goto_5
    return-void
.end method

.method protected e()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/i;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/i$h$h;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/i;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i;->l1:Lcom/kongzue/dialogx/interfaces/g;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    const-wide/16 v2, 0x96

    .line 36
    .line 37
    :goto_1
    sget-wide v4, Lcom/kongzue/dialogx/dialogs/i;->k2:J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/i;->P1(Lcom/kongzue/dialogx/dialogs/i;)J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/i;->Q1(Lcom/kongzue/dialogx/dialogs/i;)J

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    const-wide/16 v2, 0x96

    .line 36
    .line 37
    :goto_1
    sget-wide v4, Lcom/kongzue/dialogx/dialogs/i;->l2:J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/i;->N1(Lcom/kongzue/dialogx/dialogs/i;)J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/i;->O1(Lcom/kongzue/dialogx/dialogs/i;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    :cond_4
    return-wide v2
.end method

.method public init()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->S1(Lcom/kongzue/dialogx/dialogs/i;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/kongzue/dialogx/util/n;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 16
    .line 17
    iget-object v4, v3, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 24
    .line 25
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 26
    .line 27
    invoke-direct {v2, v4, v3, v5}, Lcom/kongzue/dialogx/util/n;-><init>(Lcom/kongzue/dialogx/dialogs/i;Landroid/content/Context;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 42
    .line 43
    new-instance v2, Lcom/kongzue/dialogx/dialogs/i$h$a;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/kongzue/dialogx/dialogs/i$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 52
    .line 53
    new-instance v2, Lcom/kongzue/dialogx/dialogs/i$h$b;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/kongzue/dialogx/dialogs/i$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 72
    .line 73
    const/high16 v3, 0x43fa0000    # 500.0f

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 91
    .line 92
    const/high16 v4, 0x43160000    # 150.0f

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sub-int/2addr v2, v3

    .line 99
    :goto_0
    int-to-float v2, v2

    .line 100
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/PopMenuListView;->b(F)Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 104
    .line 105
    const/4 v2, 0x4

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 110
    .line 111
    new-instance v2, Lcom/kongzue/dialogx/dialogs/i$h$c;

    .line 112
    .line 113
    invoke-direct {v2, p0}, Lcom/kongzue/dialogx/dialogs/i$h$c;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->k1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->l1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->d(Z)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 152
    .line 153
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/i;->m1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->e(Z)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    const/4 v0, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    :goto_1
    if-nez v0, :cond_4

    .line 175
    .line 176
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    sget v0, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider:I

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_3
    sget v0, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider_night:I

    .line 188
    .line 189
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 190
    .line 191
    const/4 v4, 0x2

    .line 192
    invoke-virtual {v3, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 193
    .line 194
    .line 195
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 196
    .line 197
    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 221
    .line 222
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$h$d;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/i$h$d;-><init>(Lcom/kongzue/dialogx/dialogs/i$h;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->p1(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method
