.class public Lcom/kongzue/dialogx/dialogs/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/kongzue/dialogx/util/b;

.field public b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

.field public c:Landroid/widget/RelativeLayout;

.field public d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/view/ViewGroup;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/kongzue/dialogx/interfaces/c0;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/view/View;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroid/view/ViewGroup;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public v:F

.field final synthetic w:Lcom/kongzue/dialogx/dialogs/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->v:F

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/a;->T0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/kongzue/dialogx/R$id;->box_root:I

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 25
    .line 26
    sget v0, Lcom/kongzue/dialogx/R$id;->box_bkg:I

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    sget v0, Lcom/kongzue/dialogx/R$id;->bkg:I

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 45
    .line 46
    sget v0, Lcom/kongzue/dialogx/R$id;->img_tab:I

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->e:Landroid/widget/ImageView;

    .line 55
    .line 56
    sget v0, Lcom/kongzue/dialogx/R$id;->box_body:I

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->f:Landroid/view/ViewGroup;

    .line 65
    .line 66
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialog_title:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 75
    .line 76
    sget v0, Lcom/kongzue/dialogx/R$id;->scrollView:I

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 85
    .line 86
    sget v0, Lcom/kongzue/dialogx/R$id;->box_content:I

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->i:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialog_tip:I

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->j:Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v0, "split"

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 113
    .line 114
    sget v0, Lcom/kongzue/dialogx/R$id;->box_list:I

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->l:Landroid/view/ViewGroup;

    .line 123
    .line 124
    sget v0, Lcom/kongzue/dialogx/R$id;->box_custom:I

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->m:Landroid/widget/RelativeLayout;

    .line 133
    .line 134
    iget-boolean v0, p1, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 135
    .line 136
    if-nez v0, :cond_1

    .line 137
    .line 138
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->i:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/view/ViewGroup;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->i:Landroid/widget/LinearLayout;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->i:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    const/4 v3, -0x1

    .line 164
    const/4 v4, -0x2

    .line 165
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 166
    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    :cond_1
    const-string v0, "cancelBox"

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/view/ViewGroup;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->n:Landroid/view/ViewGroup;

    .line 181
    .line 182
    sget v0, Lcom/kongzue/dialogx/R$id;->box_button:I

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/widget/LinearLayout;

    .line 189
    .line 190
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->q:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    sget v0, Lcom/kongzue/dialogx/R$id;->btn_selectNegative:I

    .line 193
    .line 194
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Landroid/widget/TextView;

    .line 199
    .line 200
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 201
    .line 202
    sget v0, Lcom/kongzue/dialogx/R$id;->btn_selectOther:I

    .line 203
    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/widget/TextView;

    .line 209
    .line 210
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 211
    .line 212
    sget v0, Lcom/kongzue/dialogx/R$id;->btn_selectPositive:I

    .line 213
    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/widget/TextView;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 221
    .line 222
    const-string v0, "imgPositiveButtonSplit"

    .line 223
    .line 224
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->o:Landroid/widget/ImageView;

    .line 231
    .line 232
    const-string v0, "imgOtherButtonSplit"

    .line 233
    .line 234
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Landroid/widget/ImageView;

    .line 239
    .line 240
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->p:Landroid/widget/ImageView;

    .line 241
    .line 242
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/a;->U0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->u:Ljava/util/List;

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->init()V

    .line 249
    .line 250
    .line 251
    iput-object p0, p1, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->b()V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method static synthetic c(Lcom/kongzue/dialogx/dialogs/a$e;Lcom/kongzue/dialogx/util/b;)Lcom/kongzue/dialogx/util/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->a:Lcom/kongzue/dialogx/util/b;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/kongzue/dialogx/dialogs/a$e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->u:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/a;->E1(Lcom/kongzue/dialogx/dialogs/a;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->f()Lcom/kongzue/dialogx/interfaces/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/a;->F1(Lcom/kongzue/dialogx/dialogs/a;Z)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->f()Lcom/kongzue/dialogx/interfaces/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/kongzue/dialogx/dialogs/a$e$b;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$b;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->h()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {p1, v0, v1}, Lcom/kongzue/dialogx/dialogs/a;->H1(Ljava/lang/Runnable;J)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1c

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

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
    goto/16 :goto_9

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->K()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->M()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->L()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g0()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/a;->l1(Lcom/kongzue/dialogx/dialogs/a;)[I

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    aget v1, v1, v2

    .line 80
    .line 81
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/a;->m1(Lcom/kongzue/dialogx/dialogs/a;)[I

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v4, 0x1

    .line 88
    aget v3, v3, v4

    .line 89
    .line 90
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 91
    .line 92
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/a;->n1(Lcom/kongzue/dialogx/dialogs/a;)[I

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/4 v6, 0x2

    .line 97
    aget v5, v5, v6

    .line 98
    .line 99
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 100
    .line 101
    invoke-static {v7}, Lcom/kongzue/dialogx/dialogs/a;->o1(Lcom/kongzue/dialogx/dialogs/a;)[I

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const/4 v8, 0x3

    .line 106
    aget v7, v7, v8

    .line 107
    .line 108
    invoke-virtual {v0, v1, v3, v5, v7}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setRootPadding(IIII)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->q1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->r1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->s1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->o()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 147
    .line 148
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->t1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->u1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->v1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

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
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->u:Ljava/util/List;

    .line 192
    .line 193
    if-eqz v0, :cond_2

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_2

    .line 204
    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Landroid/view/View;

    .line 210
    .line 211
    check-cast v1, Lcom/kongzue/dialogx/interfaces/b;

    .line 212
    .line 213
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 214
    .line 215
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/a;->w1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-interface {v1, v3}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 226
    .line 227
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 228
    .line 229
    invoke-static {v0, v1, v3}, Lcom/kongzue/dialogx/dialogs/a;->x1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 233
    .line 234
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->j:Landroid/widget/TextView;

    .line 235
    .line 236
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 237
    .line 238
    invoke-static {v0, v1, v3}, Lcom/kongzue/dialogx/dialogs/a;->y1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 242
    .line 243
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 244
    .line 245
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 246
    .line 247
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->j:Landroid/widget/TextView;

    .line 251
    .line 252
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 253
    .line 254
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 255
    .line 256
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 260
    .line 261
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 264
    .line 265
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 271
    .line 272
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 273
    .line 274
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 278
    .line 279
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 280
    .line 281
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 282
    .line 283
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->q:Landroid/widget/LinearLayout;

    .line 287
    .line 288
    const/16 v1, 0x8

    .line 289
    .line 290
    if-eqz v0, :cond_7

    .line 291
    .line 292
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 293
    .line 294
    if-eqz v3, :cond_3

    .line 295
    .line 296
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_5

    .line 301
    .line 302
    :cond_3
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 303
    .line 304
    if-eqz v3, :cond_4

    .line 305
    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_5

    .line 311
    .line 312
    :cond_4
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 313
    .line 314
    if-eqz v3, :cond_6

    .line 315
    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_6

    .line 321
    .line 322
    :cond_5
    const/4 v3, 0x0

    .line 323
    goto :goto_1

    .line 324
    :cond_6
    const/16 v3, 0x8

    .line 325
    .line 326
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    if-eqz v0, :cond_8

    .line 335
    .line 336
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    float-to-int v0, v0

    .line 343
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 344
    .line 345
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 346
    .line 347
    invoke-virtual {v5, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 351
    .line 352
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 353
    .line 354
    const/high16 v7, 0x41200000    # 10.0f

    .line 355
    .line 356
    invoke-virtual {v5, v7}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 364
    .line 365
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 366
    .line 367
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 368
    .line 369
    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 370
    .line 371
    .line 372
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 373
    .line 374
    iget-boolean v5, v0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 375
    .line 376
    if-eqz v5, :cond_a

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->f0()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_9

    .line 383
    .line 384
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 385
    .line 386
    new-instance v3, Lcom/kongzue/dialogx/dialogs/a$e$k;

    .line 387
    .line 388
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/a$e$k;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 396
    .line 397
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    goto :goto_2

    .line 401
    :cond_a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 402
    .line 403
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 404
    .line 405
    .line 406
    :goto_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 407
    .line 408
    new-instance v3, Lcom/kongzue/dialogx/dialogs/a$e$l;

    .line 409
    .line 410
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/a$e$l;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 417
    .line 418
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 419
    .line 420
    const/high16 v3, -0x40800000    # -1.0f

    .line 421
    .line 422
    cmpl-float v0, v0, v3

    .line 423
    .line 424
    if-lez v0, :cond_c

    .line 425
    .line 426
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 427
    .line 428
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 433
    .line 434
    if-eqz v0, :cond_b

    .line 435
    .line 436
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 437
    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 443
    .line 444
    if-eqz v0, :cond_b

    .line 445
    .line 446
    new-array v3, v1, [F

    .line 447
    .line 448
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 449
    .line 450
    iget v5, v5, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 451
    .line 452
    aput v5, v3, v2

    .line 453
    .line 454
    aput v5, v3, v4

    .line 455
    .line 456
    aput v5, v3, v6

    .line 457
    .line 458
    aput v5, v3, v8

    .line 459
    .line 460
    const/4 v5, 0x4

    .line 461
    const/4 v6, 0x0

    .line 462
    aput v6, v3, v5

    .line 463
    .line 464
    const/4 v5, 0x5

    .line 465
    aput v6, v3, v5

    .line 466
    .line 467
    const/4 v5, 0x6

    .line 468
    aput v6, v3, v5

    .line 469
    .line 470
    const/4 v5, 0x7

    .line 471
    aput v6, v3, v5

    .line 472
    .line 473
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 474
    .line 475
    .line 476
    :cond_b
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 477
    .line 478
    new-instance v3, Lcom/kongzue/dialogx/dialogs/a$e$a;

    .line 479
    .line 480
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/a$e$a;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 484
    .line 485
    .line 486
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 487
    .line 488
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 489
    .line 490
    .line 491
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->u:Ljava/util/List;

    .line 492
    .line 493
    if-eqz v0, :cond_c

    .line 494
    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_c

    .line 504
    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    check-cast v3, Landroid/view/View;

    .line 510
    .line 511
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 512
    .line 513
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 514
    .line 515
    iget v4, v4, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 516
    .line 517
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-interface {v3, v4}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 522
    .line 523
    .line 524
    goto :goto_3

    .line 525
    :cond_c
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 526
    .line 527
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 528
    .line 529
    if-eqz v0, :cond_d

    .line 530
    .line 531
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 532
    .line 533
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 534
    .line 535
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 536
    .line 537
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 547
    .line 548
    .line 549
    :cond_d
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 550
    .line 551
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 552
    .line 553
    if-eqz v0, :cond_11

    .line 554
    .line 555
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    if-eqz v0, :cond_11

    .line 560
    .line 561
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 562
    .line 563
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 564
    .line 565
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/a$e;->m:Landroid/widget/RelativeLayout;

    .line 566
    .line 567
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 568
    .line 569
    invoke-virtual {v3, v4, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 570
    .line 571
    .line 572
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 573
    .line 574
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 575
    .line 576
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 581
    .line 582
    if-eqz v0, :cond_f

    .line 583
    .line 584
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 585
    .line 586
    instance-of v3, v0, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 587
    .line 588
    if-eqz v3, :cond_e

    .line 589
    .line 590
    check-cast v0, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 593
    .line 594
    .line 595
    :cond_e
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 596
    .line 597
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 598
    .line 599
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 604
    .line 605
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 606
    .line 607
    goto :goto_4

    .line 608
    :cond_f
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 609
    .line 610
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    const-string v3, "ScrollController"

    .line 617
    .line 618
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    instance-of v3, v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 623
    .line 624
    if-eqz v3, :cond_11

    .line 625
    .line 626
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 627
    .line 628
    instance-of v4, v3, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 629
    .line 630
    if-eqz v4, :cond_10

    .line 631
    .line 632
    check-cast v3, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 633
    .line 634
    invoke-virtual {v3, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 635
    .line 636
    .line 637
    :cond_10
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 638
    .line 639
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 640
    .line 641
    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 642
    .line 643
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->C2()Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_12

    .line 648
    .line 649
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 650
    .line 651
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->f0()Z

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-eqz v0, :cond_12

    .line 656
    .line 657
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->e:Landroid/widget/ImageView;

    .line 658
    .line 659
    if-eqz v0, :cond_13

    .line 660
    .line 661
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    .line 663
    .line 664
    goto :goto_5

    .line 665
    :cond_12
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->e:Landroid/widget/ImageView;

    .line 666
    .line 667
    if-eqz v0, :cond_13

    .line 668
    .line 669
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    .line 671
    .line 672
    :cond_13
    :goto_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->a:Lcom/kongzue/dialogx/util/b;

    .line 673
    .line 674
    if-eqz v0, :cond_14

    .line 675
    .line 676
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 677
    .line 678
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 679
    .line 680
    invoke-virtual {v0, v3, p0}, Lcom/kongzue/dialogx/util/b;->k(Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 681
    .line 682
    .line 683
    :cond_14
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 684
    .line 685
    if-eqz v0, :cond_17

    .line 686
    .line 687
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 688
    .line 689
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-eqz v0, :cond_16

    .line 694
    .line 695
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->j:Landroid/widget/TextView;

    .line 696
    .line 697
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    if-nez v0, :cond_15

    .line 702
    .line 703
    goto :goto_6

    .line 704
    :cond_15
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 705
    .line 706
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 707
    .line 708
    .line 709
    goto :goto_7

    .line 710
    :cond_16
    :goto_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 711
    .line 712
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    .line 714
    .line 715
    :cond_17
    :goto_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->n:Landroid/view/ViewGroup;

    .line 716
    .line 717
    if-eqz v0, :cond_19

    .line 718
    .line 719
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 720
    .line 721
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 722
    .line 723
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->j0(Ljava/lang/CharSequence;)Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    if-eqz v0, :cond_18

    .line 728
    .line 729
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->n:Landroid/view/ViewGroup;

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    .line 733
    .line 734
    goto :goto_8

    .line 735
    :cond_18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->n:Landroid/view/ViewGroup;

    .line 736
    .line 737
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .line 739
    .line 740
    :cond_19
    :goto_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 741
    .line 742
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 743
    .line 744
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 745
    .line 746
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/a;->z1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 750
    .line 751
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 752
    .line 753
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 754
    .line 755
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/a;->B1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 756
    .line 757
    .line 758
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 759
    .line 760
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 761
    .line 762
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 763
    .line 764
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/a;->C1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 765
    .line 766
    .line 767
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->o:Landroid/widget/ImageView;

    .line 768
    .line 769
    if-eqz v0, :cond_1a

    .line 770
    .line 771
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 772
    .line 773
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    .line 779
    .line 780
    :cond_1a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->p:Landroid/widget/ImageView;

    .line 781
    .line 782
    if-eqz v0, :cond_1b

    .line 783
    .line 784
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 785
    .line 786
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    .line 792
    .line 793
    :cond_1b
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 794
    .line 795
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->D1(Lcom/kongzue/dialogx/dialogs/a;)V

    .line 796
    .line 797
    .line 798
    :cond_1c
    :goto_9
    return-void
.end method

.method public e()Lcom/kongzue/dialogx/util/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->a:Lcom/kongzue/dialogx/util/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected f()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$c;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$c;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    return-object v0
.end method

.method public g()J
    .locals 7

    .line 1
    sget v0, Lcom/kongzue/dialogx/dialogs/a;->h2:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 v0, 0x12c

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/a;->N1(Lcom/kongzue/dialogx/dialogs/a;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->O1(Lcom/kongzue/dialogx/dialogs/a;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    return-wide v0
.end method

.method public h()J
    .locals 7

    .line 1
    sget v0, Lcom/kongzue/dialogx/dialogs/a;->i2:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 v0, 0x12c

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/a;->K1(Lcom/kongzue/dialogx/dialogs/a;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->M1(Lcom/kongzue/dialogx/dialogs/a;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    return-wide v0
.end method

.method public i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->f0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/c;->c(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/a$e;->a(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/a$e;->a(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget v0, Lcom/kongzue/dialogx/dialogs/a;->i2:I

    .line 50
    .line 51
    if-ltz v0, :cond_3

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-wide/16 v0, 0x12c

    .line 56
    .line 57
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/a;->I1(Lcom/kongzue/dialogx/dialogs/a;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    cmp-long v6, v2, v4

    .line 66
    .line 67
    if-ltz v6, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->J1(Lcom/kongzue/dialogx/dialogs/a;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    new-array v3, v3, [F

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    aput v5, v3, v4

    .line 86
    .line 87
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    int-to-float v4, v4

    .line 96
    const/4 v5, 0x1

    .line 97
    aput v4, v3, v5

    .line 98
    .line 99
    const-string v4, "y"

    .line 100
    .line 101
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 4
    .line 5
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->W()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->p:Lcom/kongzue/dialogx/util/TextInfo;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 30
    .line 31
    :cond_0
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->q:Lcom/kongzue/dialogx/util/TextInfo;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 38
    .line 39
    :cond_1
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->o:Lcom/kongzue/dialogx/util/TextInfo;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 54
    .line 55
    :cond_3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 60
    .line 61
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 62
    .line 63
    :cond_4
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 70
    .line 71
    :cond_5
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->e1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 78
    .line 79
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->v:Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/a;->p1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 85
    .line 86
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 87
    .line 88
    if-nez v1, :cond_7

    .line 89
    .line 90
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->A:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 93
    .line 94
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->g:Landroid/widget/TextView;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 104
    .line 105
    .line 106
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 115
    .line 116
    .line 117
    :cond_9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v0, :cond_a

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 126
    .line 127
    .line 128
    :cond_a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v0, :cond_b

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 137
    .line 138
    .line 139
    :cond_b
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_c

    .line 148
    .line 149
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_c
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    :goto_0
    int-to-float v1, v1

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 184
    .line 185
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$d;

    .line 186
    .line 187
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$d;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->r:Landroid/widget/TextView;

    .line 194
    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$e;

    .line 198
    .line 199
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$e;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :cond_d
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->s:Landroid/widget/TextView;

    .line 206
    .line 207
    if-eqz v0, :cond_e

    .line 208
    .line 209
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$f;

    .line 210
    .line 211
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$f;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_e
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->t:Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v0, :cond_f

    .line 220
    .line 221
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$g;

    .line 222
    .line 223
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$g;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    :cond_f
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 230
    .line 231
    if-eqz v0, :cond_11

    .line 232
    .line 233
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->Y0(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->c(Z)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 254
    .line 255
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/a;->Z0(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->d(Z)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v0, :cond_10

    .line 274
    .line 275
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    .line 279
    .line 280
    :cond_10
    if-eqz v1, :cond_11

    .line 281
    .line 282
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    .line 290
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e;->k:Landroid/view/View;

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    .line 294
    .line 295
    :cond_11
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 296
    .line 297
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$h;

    .line 298
    .line 299
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$h;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 306
    .line 307
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e$i;

    .line 308
    .line 309
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$i;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 313
    .line 314
    .line 315
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a$e$j;

    .line 316
    .line 317
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/a$e$j;-><init>(Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->g()J

    .line 321
    .line 322
    .line 323
    move-result-wide v1

    .line 324
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/a;->j1(Ljava/lang/Runnable;J)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 328
    .line 329
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->k1(Lcom/kongzue/dialogx/dialogs/a;)V

    .line 330
    .line 331
    .line 332
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a$e;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
