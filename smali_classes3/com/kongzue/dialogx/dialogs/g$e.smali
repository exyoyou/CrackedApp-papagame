.class public Lcom/kongzue/dialogx/dialogs/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
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

.field public d:Landroid/widget/TextView;

.field public e:Lcom/kongzue/dialogx/interfaces/c0;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/widget/RelativeLayout;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field final synthetic p:Lcom/kongzue/dialogx/dialogs/g;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

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
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/g;->T0(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 21
    .line 22
    sget v0, Lcom/kongzue/dialogx/R$id;->bkg:I

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 31
    .line 32
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialog_title:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 41
    .line 42
    sget v0, Lcom/kongzue/dialogx/R$id;->scrollView:I

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->e:Lcom/kongzue/dialogx/interfaces/c0;

    .line 51
    .line 52
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_dialog_tip:I

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->f:Landroid/widget/TextView;

    .line 61
    .line 62
    sget v0, Lcom/kongzue/dialogx/R$id;->box_list:I

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->g:Landroid/view/ViewGroup;

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    sget v0, Lcom/kongzue/dialogx/R$id;->txt_input:I

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/EditText;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 91
    .line 92
    sget v0, Lcom/kongzue/dialogx/R$id;->box_button:I

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    sget v0, Lcom/kongzue/dialogx/R$id;->btn_selectOther:I

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 111
    .line 112
    sget v0, Lcom/kongzue/dialogx/R$id;->space_other_button:I

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->l:Landroid/view/View;

    .line 119
    .line 120
    const-string v0, "split"

    .line 121
    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->m:Landroid/view/View;

    .line 127
    .line 128
    sget v0, Lcom/kongzue/dialogx/R$id;->btn_selectNegative:I

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 137
    .line 138
    sget v0, Lcom/kongzue/dialogx/R$id;->btn_selectPositive:I

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/g;->U0(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e;->a:Ljava/util/List;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g$e;->init()V

    .line 155
    .line 156
    .line 157
    iput-object p0, p1, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g$e;->b()V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method static synthetic c(Lcom/kongzue/dialogx/dialogs/g$e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->o2(Lcom/kongzue/dialogx/dialogs/g;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g$e;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/g;->p2(Lcom/kongzue/dialogx/dialogs/g;Z)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g$e;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/kongzue/dialogx/dialogs/g$e$h;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$h;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/g$e;->f(Landroid/view/animation/Animation;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {p1, v0, v1}, Lcom/kongzue/dialogx/dialogs/g;->r2(Ljava/lang/Runnable;J)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public b()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_34

    .line 6
    .line 7
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_c

    .line 16
    .line 17
    :cond_0
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g0()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->b()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/j;->b()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->c()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->c()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    const/16 v6, 0x1d

    .line 97
    .line 98
    const-string v7, "\u4e2d\u8bbe\u7f6e\u5149\u6807\u989c\u8272\u65f6\u53d1\u751f\u9519\u8bef\uff01"

    .line 99
    .line 100
    const-string v8, "DialogX: \u5728\u5bf9\u8bdd\u6846"

    .line 101
    .line 102
    const-string v9, "mCursorDrawableRes"

    .line 103
    .line 104
    const-class v10, Landroid/widget/TextView;

    .line 105
    .line 106
    if-lt v5, v6, :cond_3

    .line 107
    .line 108
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-static {v5}, Lcom/google/android/material/textfield/i0;->a(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-eqz v5, :cond_2

    .line 115
    .line 116
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 117
    .line 118
    invoke-static {v5}, Lcom/google/android/material/textfield/i0;->a(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    .line 127
    .line 128
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 129
    .line 130
    invoke-direct {v6, v0, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_2
    :try_start_0
    invoke-virtual {v10, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 146
    .line 147
    sget v9, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_defalut_edittxt_cursor:I

    .line 148
    .line 149
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 157
    .line 158
    invoke-static {v5}, Lcom/google/android/material/textfield/i0;->a(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    .line 167
    .line 168
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 169
    .line 170
    invoke-direct {v6, v0, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :catchall_0
    move-exception v0

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 188
    .line 189
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->n()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->r1(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-boolean v5, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 207
    .line 208
    if-eqz v5, :cond_4

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_3
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    const-string v6, "mEditor"

    .line 229
    .line 230
    invoke-virtual {v10, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 235
    .line 236
    .line 237
    iget-object v9, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 238
    .line 239
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    const-string v10, "mCursorDrawable"

    .line 248
    .line 249
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    invoke-virtual {v9, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 254
    .line 255
    .line 256
    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    .line 257
    .line 258
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 259
    .line 260
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    aput-object v11, v10, v3

    .line 273
    .line 274
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 275
    .line 276
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    aput-object v5, v10, v4

    .line 289
    .line 290
    aget-object v5, v10, v3

    .line 291
    .line 292
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 293
    .line 294
    invoke-virtual {v5, v0, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    .line 296
    .line 297
    aget-object v5, v10, v4

    .line 298
    .line 299
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 300
    .line 301
    invoke-virtual {v5, v0, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9, v6, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    .line 306
    .line 307
    goto :goto_0

    .line 308
    :catchall_1
    move-exception v0

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 318
    .line 319
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->n()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->s1(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    sget-boolean v5, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 337
    .line 338
    if-eqz v5, :cond_4

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 344
    .line 345
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 346
    .line 347
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->t1(Lcom/kongzue/dialogx/dialogs/g;)[I

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    aget v5, v5, v3

    .line 352
    .line 353
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 354
    .line 355
    invoke-static {v6}, Lcom/kongzue/dialogx/dialogs/g;->u1(Lcom/kongzue/dialogx/dialogs/g;)[I

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    aget v6, v6, v4

    .line 360
    .line 361
    iget-object v7, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 362
    .line 363
    invoke-static {v7}, Lcom/kongzue/dialogx/dialogs/g;->v1(Lcom/kongzue/dialogx/dialogs/g;)[I

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    aget v7, v7, v2

    .line 368
    .line 369
    iget-object v8, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 370
    .line 371
    invoke-static {v8}, Lcom/kongzue/dialogx/dialogs/g;->w1(Lcom/kongzue/dialogx/dialogs/g;)[I

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    const/4 v9, 0x3

    .line 376
    aget v8, v8, v9

    .line 377
    .line 378
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setRootPadding(IIII)V

    .line 379
    .line 380
    .line 381
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 382
    .line 383
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->x1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-eqz v0, :cond_6

    .line 388
    .line 389
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 390
    .line 391
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 392
    .line 393
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->y1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    invoke-virtual {v0, v5, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 402
    .line 403
    .line 404
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 405
    .line 406
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->z1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->o()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_5

    .line 415
    .line 416
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 417
    .line 418
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 419
    .line 420
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->A1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    invoke-virtual {v0, v5, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 429
    .line 430
    .line 431
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 432
    .line 433
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 434
    .line 435
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->C1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    invoke-virtual {v0, v5, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 444
    .line 445
    .line 446
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 447
    .line 448
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 449
    .line 450
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->D1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    invoke-virtual {v0, v5, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 459
    .line 460
    .line 461
    :cond_5
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->a:Ljava/util/List;

    .line 462
    .line 463
    if-eqz v0, :cond_6

    .line 464
    .line 465
    const-string v0, "#blurViews != null"

    .line 466
    .line 467
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->E1(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->a:Ljava/util/List;

    .line 471
    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    if-eqz v5, :cond_6

    .line 481
    .line 482
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    check-cast v5, Landroid/view/View;

    .line 487
    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    const-string v7, "#blurView: "

    .line 494
    .line 495
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    invoke-static {v6}, Lcom/kongzue/dialogx/dialogs/g;->F1(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    check-cast v5, Lcom/kongzue/dialogx/interfaces/b;

    .line 509
    .line 510
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 511
    .line 512
    invoke-static {v6}, Lcom/kongzue/dialogx/dialogs/g;->G1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    invoke-interface {v5, v6}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 517
    .line 518
    .line 519
    goto :goto_1

    .line 520
    :cond_6
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 521
    .line 522
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 523
    .line 524
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->K()I

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    invoke-virtual {v0, v5}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 529
    .line 530
    .line 531
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 532
    .line 533
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 534
    .line 535
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    invoke-virtual {v0, v5}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 540
    .line 541
    .line 542
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 543
    .line 544
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 545
    .line 546
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->M()I

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 551
    .line 552
    .line 553
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 554
    .line 555
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 556
    .line 557
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->L()I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 562
    .line 563
    .line 564
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 565
    .line 566
    const-string v5, "dialogx_editbox"

    .line 567
    .line 568
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 573
    .line 574
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 575
    .line 576
    instance-of v5, v5, Lcom/kongzue/dialogx/dialogs/f;

    .line 577
    .line 578
    const/16 v6, 0x8

    .line 579
    .line 580
    if-eqz v5, :cond_8

    .line 581
    .line 582
    if-eqz v0, :cond_7

    .line 583
    .line 584
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    .line 586
    .line 587
    :cond_7
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 588
    .line 589
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 590
    .line 591
    .line 592
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 593
    .line 594
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 595
    .line 596
    invoke-virtual {v0, v5}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->b(Landroid/view/View;)V

    .line 597
    .line 598
    .line 599
    goto :goto_2

    .line 600
    :cond_8
    if-eqz v0, :cond_9

    .line 601
    .line 602
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 603
    .line 604
    .line 605
    :cond_9
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 606
    .line 607
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 608
    .line 609
    .line 610
    :goto_2
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 611
    .line 612
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 613
    .line 614
    .line 615
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 616
    .line 617
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 618
    .line 619
    if-eqz v0, :cond_a

    .line 620
    .line 621
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    invoke-virtual {v5, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackgroundColor(I)V

    .line 628
    .line 629
    .line 630
    :cond_a
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 631
    .line 632
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 633
    .line 634
    const/high16 v5, -0x40800000    # -1.0f

    .line 635
    .line 636
    cmpl-float v0, v0, v5

    .line 637
    .line 638
    if-lez v0, :cond_b

    .line 639
    .line 640
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 641
    .line 642
    new-instance v5, Lcom/kongzue/dialogx/dialogs/g$e$f;

    .line 643
    .line 644
    invoke-direct {v5, v1}, Lcom/kongzue/dialogx/dialogs/g$e$f;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 648
    .line 649
    .line 650
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 651
    .line 652
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->a:Ljava/util/List;

    .line 656
    .line 657
    if-eqz v0, :cond_b

    .line 658
    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v5

    .line 667
    if-eqz v5, :cond_b

    .line 668
    .line 669
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    check-cast v5, Landroid/view/View;

    .line 674
    .line 675
    check-cast v5, Lcom/kongzue/dialogx/interfaces/b;

    .line 676
    .line 677
    iget-object v7, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 678
    .line 679
    iget v7, v7, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 680
    .line 681
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 682
    .line 683
    .line 684
    move-result-object v7

    .line 685
    invoke-interface {v5, v7}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 686
    .line 687
    .line 688
    goto :goto_3

    .line 689
    :cond_b
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 690
    .line 691
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 692
    .line 693
    iget-object v7, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 694
    .line 695
    if-nez v7, :cond_c

    .line 696
    .line 697
    sget-object v7, Lcom/kongzue/dialogx/DialogX;->V:Ljava/lang/CharSequence;

    .line 698
    .line 699
    :cond_c
    invoke-static {v0, v5, v7}, Lcom/kongzue/dialogx/dialogs/g;->H1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 700
    .line 701
    .line 702
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 703
    .line 704
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->f:Landroid/widget/TextView;

    .line 705
    .line 706
    iget-object v7, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 707
    .line 708
    invoke-static {v0, v5, v7}, Lcom/kongzue/dialogx/dialogs/g;->I1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 712
    .line 713
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 714
    .line 715
    iget-object v7, v0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 716
    .line 717
    invoke-static {v0, v5, v7}, Lcom/kongzue/dialogx/dialogs/g;->J1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 718
    .line 719
    .line 720
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 721
    .line 722
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 723
    .line 724
    iget-object v7, v0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 725
    .line 726
    invoke-static {v0, v5, v7}, Lcom/kongzue/dialogx/dialogs/g;->K1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 727
    .line 728
    .line 729
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 730
    .line 731
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 732
    .line 733
    iget-object v7, v0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 734
    .line 735
    invoke-static {v0, v5, v7}, Lcom/kongzue/dialogx/dialogs/g;->L1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 736
    .line 737
    .line 738
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 739
    .line 740
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 741
    .line 742
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    .line 743
    .line 744
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    .line 746
    .line 747
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 748
    .line 749
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 750
    .line 751
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->i1:Ljava/lang/String;

    .line 752
    .line 753
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 754
    .line 755
    .line 756
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->l:Landroid/view/View;

    .line 757
    .line 758
    if-eqz v0, :cond_e

    .line 759
    .line 760
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 761
    .line 762
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 763
    .line 764
    if-nez v5, :cond_d

    .line 765
    .line 766
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 767
    .line 768
    .line 769
    goto :goto_4

    .line 770
    :cond_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 771
    .line 772
    .line 773
    :cond_e
    :goto_4
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 774
    .line 775
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 776
    .line 777
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 778
    .line 779
    invoke-static {v0, v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 780
    .line 781
    .line 782
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->f:Landroid/widget/TextView;

    .line 783
    .line 784
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 785
    .line 786
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 787
    .line 788
    invoke-static {v0, v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 789
    .line 790
    .line 791
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 792
    .line 793
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 794
    .line 795
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 796
    .line 797
    invoke-static {v0, v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 798
    .line 799
    .line 800
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 801
    .line 802
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 803
    .line 804
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 805
    .line 806
    invoke-static {v0, v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 807
    .line 808
    .line 809
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 810
    .line 811
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 812
    .line 813
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 814
    .line 815
    invoke-static {v0, v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 816
    .line 817
    .line 818
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 819
    .line 820
    if-eqz v0, :cond_13

    .line 821
    .line 822
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 823
    .line 824
    if-eqz v5, :cond_f

    .line 825
    .line 826
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 827
    .line 828
    .line 829
    move-result v5

    .line 830
    if-eqz v5, :cond_11

    .line 831
    .line 832
    :cond_f
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 833
    .line 834
    if-eqz v5, :cond_10

    .line 835
    .line 836
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 837
    .line 838
    .line 839
    move-result v5

    .line 840
    if-eqz v5, :cond_11

    .line 841
    .line 842
    :cond_10
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 843
    .line 844
    if-eqz v5, :cond_12

    .line 845
    .line 846
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 847
    .line 848
    .line 849
    move-result v5

    .line 850
    if-nez v5, :cond_12

    .line 851
    .line 852
    :cond_11
    const/4 v5, 0x0

    .line 853
    goto :goto_5

    .line 854
    :cond_12
    const/16 v5, 0x8

    .line 855
    .line 856
    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 857
    .line 858
    .line 859
    :cond_13
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 860
    .line 861
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 862
    .line 863
    const/4 v5, 0x0

    .line 864
    if-eqz v0, :cond_14

    .line 865
    .line 866
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 867
    .line 868
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    float-to-int v0, v0

    .line 873
    iget-object v7, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 874
    .line 875
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 876
    .line 877
    invoke-virtual {v7, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 878
    .line 879
    .line 880
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 881
    .line 882
    iget-object v7, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 883
    .line 884
    const/high16 v8, 0x41200000    # 10.0f

    .line 885
    .line 886
    invoke-virtual {v7, v8}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 887
    .line 888
    .line 889
    move-result v7

    .line 890
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 891
    .line 892
    .line 893
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 894
    .line 895
    iget-object v7, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 896
    .line 897
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 898
    .line 899
    invoke-virtual {v0, v7, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 900
    .line 901
    .line 902
    :cond_14
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 903
    .line 904
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 905
    .line 906
    const/4 v7, 0x4

    .line 907
    const/4 v8, -0x1

    .line 908
    if-eqz v0, :cond_19

    .line 909
    .line 910
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->e()I

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 915
    .line 916
    iget-object v10, v10, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 917
    .line 918
    invoke-virtual {v10}, Lcom/kongzue/dialogx/util/j;->f()I

    .line 919
    .line 920
    .line 921
    move-result v10

    .line 922
    if-eq v10, v8, :cond_16

    .line 923
    .line 924
    and-int/lit8 v10, v0, 0xf

    .line 925
    .line 926
    if-eq v10, v4, :cond_15

    .line 927
    .line 928
    if-eq v10, v2, :cond_15

    .line 929
    .line 930
    if-eq v10, v9, :cond_15

    .line 931
    .line 932
    if-eq v10, v7, :cond_15

    .line 933
    .line 934
    and-int/lit8 v0, v0, -0x10

    .line 935
    .line 936
    or-int/2addr v0, v4

    .line 937
    :cond_15
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 938
    .line 939
    new-array v11, v4, [Landroid/text/InputFilter;

    .line 940
    .line 941
    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    .line 942
    .line 943
    iget-object v13, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 944
    .line 945
    iget-object v13, v13, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 946
    .line 947
    invoke-virtual {v13}, Lcom/kongzue/dialogx/util/j;->f()I

    .line 948
    .line 949
    .line 950
    move-result v13

    .line 951
    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 952
    .line 953
    .line 954
    aput-object v12, v11, v3

    .line 955
    .line 956
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 957
    .line 958
    .line 959
    :cond_16
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 960
    .line 961
    iget-object v10, v10, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 962
    .line 963
    invoke-virtual {v10}, Lcom/kongzue/dialogx/util/j;->h()Z

    .line 964
    .line 965
    .line 966
    move-result v10

    .line 967
    if-eqz v10, :cond_17

    .line 968
    .line 969
    const/high16 v10, 0x20000

    .line 970
    .line 971
    or-int/2addr v0, v10

    .line 972
    :cond_17
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 973
    .line 974
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 975
    .line 976
    .line 977
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 978
    .line 979
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 980
    .line 981
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->g()Lcom/kongzue/dialogx/util/TextInfo;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    if-eqz v0, :cond_18

    .line 986
    .line 987
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 988
    .line 989
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 990
    .line 991
    iget-object v10, v10, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 992
    .line 993
    invoke-virtual {v10}, Lcom/kongzue/dialogx/util/j;->g()Lcom/kongzue/dialogx/util/TextInfo;

    .line 994
    .line 995
    .line 996
    move-result-object v10

    .line 997
    invoke-static {v0, v10}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 998
    .line 999
    .line 1000
    :cond_18
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1001
    .line 1002
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 1003
    .line 1004
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->d()[Landroid/text/InputFilter;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    if-eqz v0, :cond_19

    .line 1009
    .line 1010
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1011
    .line 1012
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 1013
    .line 1014
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->d()[Landroid/text/InputFilter;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    array-length v0, v0

    .line 1019
    if-lez v0, :cond_19

    .line 1020
    .line 1021
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 1022
    .line 1023
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1024
    .line 1025
    iget-object v10, v10, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 1026
    .line 1027
    invoke-virtual {v10}, Lcom/kongzue/dialogx/util/j;->d()[Landroid/text/InputFilter;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v10

    .line 1031
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1032
    .line 1033
    .line 1034
    :cond_19
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1035
    .line 1036
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 1037
    .line 1038
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->j0(Ljava/lang/CharSequence;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    xor-int/2addr v0, v4

    .line 1043
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1044
    .line 1045
    iget-object v10, v10, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 1046
    .line 1047
    invoke-static {v10}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->j0(Ljava/lang/CharSequence;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v10

    .line 1051
    if-nez v10, :cond_1a

    .line 1052
    .line 1053
    add-int/lit8 v0, v0, 0x1

    .line 1054
    .line 1055
    :cond_1a
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1056
    .line 1057
    iget-object v10, v10, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 1058
    .line 1059
    invoke-static {v10}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->j0(Ljava/lang/CharSequence;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v10

    .line 1063
    if-nez v10, :cond_1b

    .line 1064
    .line 1065
    add-int/lit8 v0, v0, 0x1

    .line 1066
    .line 1067
    :cond_1b
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->m:Landroid/view/View;

    .line 1068
    .line 1069
    if-eqz v10, :cond_1c

    .line 1070
    .line 1071
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1072
    .line 1073
    invoke-static {v11}, Lcom/kongzue/dialogx/dialogs/g;->N1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v12

    .line 1077
    iget-object v13, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1078
    .line 1079
    invoke-virtual {v13}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v13

    .line 1083
    invoke-virtual {v12, v13}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->m(Z)I

    .line 1084
    .line 1085
    .line 1086
    move-result v12

    .line 1087
    invoke-static {v11, v12}, Lcom/kongzue/dialogx/dialogs/g;->O1(Lcom/kongzue/dialogx/dialogs/g;I)I

    .line 1088
    .line 1089
    .line 1090
    move-result v11

    .line 1091
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1092
    .line 1093
    .line 1094
    :cond_1c
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1095
    .line 1096
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1097
    .line 1098
    iget v11, v11, Lcom/kongzue/dialogx/dialogs/g;->e2:I

    .line 1099
    .line 1100
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1101
    .line 1102
    .line 1103
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1104
    .line 1105
    iget v11, v10, Lcom/kongzue/dialogx/dialogs/g;->e2:I

    .line 1106
    .line 1107
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1108
    .line 1109
    const/4 v13, 0x5

    .line 1110
    if-ne v11, v4, :cond_23

    .line 1111
    .line 1112
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->P1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v10

    .line 1116
    invoke-virtual {v10}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->p()[I

    .line 1117
    .line 1118
    .line 1119
    move-result-object v10

    .line 1120
    if-eqz v10, :cond_2c

    .line 1121
    .line 1122
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1123
    .line 1124
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->Q1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v10

    .line 1128
    invoke-virtual {v10}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->p()[I

    .line 1129
    .line 1130
    .line 1131
    move-result-object v10

    .line 1132
    array-length v10, v10

    .line 1133
    if-eqz v10, :cond_2c

    .line 1134
    .line 1135
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1136
    .line 1137
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1138
    .line 1139
    .line 1140
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1141
    .line 1142
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->R1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v10

    .line 1146
    invoke-virtual {v10}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->p()[I

    .line 1147
    .line 1148
    .line 1149
    move-result-object v10

    .line 1150
    array-length v11, v10

    .line 1151
    const/4 v14, 0x0

    .line 1152
    :goto_6
    if-ge v14, v11, :cond_2c

    .line 1153
    .line 1154
    aget v15, v10, v14

    .line 1155
    .line 1156
    if-eq v15, v4, :cond_21

    .line 1157
    .line 1158
    if-eq v15, v2, :cond_20

    .line 1159
    .line 1160
    if-eq v15, v9, :cond_1f

    .line 1161
    .line 1162
    if-eq v15, v7, :cond_1e

    .line 1163
    .line 1164
    if-eq v15, v13, :cond_1d

    .line 1165
    .line 1166
    goto/16 :goto_7

    .line 1167
    .line 1168
    :cond_1d
    new-instance v15, Landroid/view/View;

    .line 1169
    .line 1170
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1171
    .line 1172
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    invoke-direct {v15, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1177
    .line 1178
    .line 1179
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1180
    .line 1181
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1186
    .line 1187
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->Z1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v5

    .line 1191
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1192
    .line 1193
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v6

    .line 1197
    invoke-virtual {v5, v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->m(Z)I

    .line 1198
    .line 1199
    .line 1200
    move-result v5

    .line 1201
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 1202
    .line 1203
    .line 1204
    move-result v3

    .line 1205
    invoke-virtual {v15, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1206
    .line 1207
    .line 1208
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1209
    .line 1210
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1211
    .line 1212
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->a2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v5

    .line 1216
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->n()I

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1221
    .line 1222
    .line 1223
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1224
    .line 1225
    invoke-virtual {v5, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    .line 1227
    .line 1228
    goto/16 :goto_7

    .line 1229
    .line 1230
    :cond_1e
    new-instance v3, Landroid/widget/Space;

    .line 1231
    .line 1232
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1233
    .line 1234
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v5

    .line 1238
    invoke-direct {v3, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 1239
    .line 1240
    .line 1241
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1242
    .line 1243
    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1244
    .line 1245
    .line 1246
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1247
    .line 1248
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1249
    .line 1250
    invoke-virtual {v6, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    .line 1252
    .line 1253
    goto/16 :goto_7

    .line 1254
    .line 1255
    :cond_1f
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1256
    .line 1257
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 1258
    .line 1259
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1260
    .line 1261
    .line 1262
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1263
    .line 1264
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/g;->U1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v3

    .line 1268
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    if-eqz v3, :cond_22

    .line 1273
    .line 1274
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 1275
    .line 1276
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1277
    .line 1278
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->V1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v5

    .line 1282
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v5

    .line 1286
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1287
    .line 1288
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1289
    .line 1290
    .line 1291
    move-result v6

    .line 1292
    invoke-virtual {v5, v0, v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;->c(IZ)I

    .line 1293
    .line 1294
    .line 1295
    move-result v5

    .line 1296
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_7

    .line 1300
    :cond_20
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1301
    .line 1302
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 1303
    .line 1304
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1305
    .line 1306
    .line 1307
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1308
    .line 1309
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/g;->X1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v3

    .line 1313
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v3

    .line 1317
    if-eqz v3, :cond_22

    .line 1318
    .line 1319
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 1320
    .line 1321
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1322
    .line 1323
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->Y1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v5

    .line 1327
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v5

    .line 1331
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1332
    .line 1333
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1334
    .line 1335
    .line 1336
    move-result v6

    .line 1337
    invoke-virtual {v5, v0, v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;->a(IZ)I

    .line 1338
    .line 1339
    .line 1340
    move-result v5

    .line 1341
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1342
    .line 1343
    .line 1344
    goto :goto_7

    .line 1345
    :cond_21
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1346
    .line 1347
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 1348
    .line 1349
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1350
    .line 1351
    .line 1352
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1353
    .line 1354
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/g;->S1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v3

    .line 1362
    if-eqz v3, :cond_22

    .line 1363
    .line 1364
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 1365
    .line 1366
    iget-object v5, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1367
    .line 1368
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/g;->T1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v5

    .line 1372
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v5

    .line 1376
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1377
    .line 1378
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1379
    .line 1380
    .line 1381
    move-result v6

    .line 1382
    invoke-virtual {v5, v0, v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;->b(IZ)I

    .line 1383
    .line 1384
    .line 1385
    move-result v5

    .line 1386
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1387
    .line 1388
    .line 1389
    :cond_22
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 1390
    .line 1391
    const/4 v3, 0x0

    .line 1392
    const/4 v5, 0x0

    .line 1393
    const/16 v6, 0x8

    .line 1394
    .line 1395
    goto/16 :goto_6

    .line 1396
    .line 1397
    :cond_23
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->b2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v3

    .line 1401
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->c()[I

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    if-eqz v3, :cond_2c

    .line 1406
    .line 1407
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1408
    .line 1409
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/g;->c2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v3

    .line 1413
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->c()[I

    .line 1414
    .line 1415
    .line 1416
    move-result-object v3

    .line 1417
    array-length v3, v3

    .line 1418
    if-eqz v3, :cond_2c

    .line 1419
    .line 1420
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1421
    .line 1422
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1423
    .line 1424
    .line 1425
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1426
    .line 1427
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/g;->d2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v3

    .line 1431
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->c()[I

    .line 1432
    .line 1433
    .line 1434
    move-result-object v3

    .line 1435
    array-length v5, v3

    .line 1436
    const/4 v6, 0x0

    .line 1437
    :goto_8
    if-ge v6, v5, :cond_2c

    .line 1438
    .line 1439
    aget v10, v3, v6

    .line 1440
    .line 1441
    if-eq v10, v4, :cond_2a

    .line 1442
    .line 1443
    if-eq v10, v2, :cond_29

    .line 1444
    .line 1445
    if-eq v10, v9, :cond_28

    .line 1446
    .line 1447
    if-eq v10, v7, :cond_26

    .line 1448
    .line 1449
    if-eq v10, v13, :cond_24

    .line 1450
    .line 1451
    goto/16 :goto_9

    .line 1452
    .line 1453
    :cond_24
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1454
    .line 1455
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1456
    .line 1457
    .line 1458
    move-result v10

    .line 1459
    if-lt v10, v4, :cond_2b

    .line 1460
    .line 1461
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1462
    .line 1463
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1464
    .line 1465
    .line 1466
    move-result v11

    .line 1467
    sub-int/2addr v11, v4

    .line 1468
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v10

    .line 1472
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 1473
    .line 1474
    .line 1475
    move-result v10

    .line 1476
    const/16 v11, 0x8

    .line 1477
    .line 1478
    if-ne v10, v11, :cond_25

    .line 1479
    .line 1480
    goto/16 :goto_9

    .line 1481
    .line 1482
    :cond_25
    new-instance v10, Landroid/view/View;

    .line 1483
    .line 1484
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1485
    .line 1486
    invoke-virtual {v11}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v11

    .line 1490
    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1491
    .line 1492
    .line 1493
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1494
    .line 1495
    invoke-virtual {v11}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v11

    .line 1499
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1500
    .line 1501
    invoke-static {v14}, Lcom/kongzue/dialogx/dialogs/g;->l2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v14

    .line 1505
    iget-object v15, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1506
    .line 1507
    invoke-virtual {v15}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v15

    .line 1511
    invoke-virtual {v14, v15}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->m(Z)I

    .line 1512
    .line 1513
    .line 1514
    move-result v14

    .line 1515
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    .line 1516
    .line 1517
    .line 1518
    move-result v11

    .line 1519
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1520
    .line 1521
    .line 1522
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1523
    .line 1524
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1525
    .line 1526
    invoke-static {v14}, Lcom/kongzue/dialogx/dialogs/g;->m2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v14

    .line 1530
    invoke-virtual {v14}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->n()I

    .line 1531
    .line 1532
    .line 1533
    move-result v14

    .line 1534
    invoke-direct {v11, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1535
    .line 1536
    .line 1537
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1538
    .line 1539
    invoke-virtual {v14, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    .line 1541
    .line 1542
    goto/16 :goto_9

    .line 1543
    .line 1544
    :cond_26
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1545
    .line 1546
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1547
    .line 1548
    .line 1549
    move-result v10

    .line 1550
    if-lt v10, v4, :cond_2b

    .line 1551
    .line 1552
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1553
    .line 1554
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1555
    .line 1556
    .line 1557
    move-result v11

    .line 1558
    sub-int/2addr v11, v4

    .line 1559
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v10

    .line 1563
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 1564
    .line 1565
    .line 1566
    move-result v10

    .line 1567
    const/16 v11, 0x8

    .line 1568
    .line 1569
    if-ne v10, v11, :cond_27

    .line 1570
    .line 1571
    goto/16 :goto_9

    .line 1572
    .line 1573
    :cond_27
    new-instance v10, Landroid/widget/Space;

    .line 1574
    .line 1575
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1576
    .line 1577
    invoke-virtual {v11}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v11

    .line 1581
    invoke-direct {v10, v11}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 1582
    .line 1583
    .line 1584
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1585
    .line 1586
    const/4 v14, -0x2

    .line 1587
    invoke-direct {v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1588
    .line 1589
    .line 1590
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1591
    .line 1592
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1593
    .line 1594
    invoke-virtual {v14, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    .line 1596
    .line 1597
    goto/16 :goto_9

    .line 1598
    .line 1599
    :cond_28
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1600
    .line 1601
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 1602
    .line 1603
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1604
    .line 1605
    .line 1606
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1607
    .line 1608
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->g2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v10

    .line 1612
    invoke-virtual {v10}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v10

    .line 1616
    if-eqz v10, :cond_2b

    .line 1617
    .line 1618
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 1619
    .line 1620
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1621
    .line 1622
    invoke-static {v11}, Lcom/kongzue/dialogx/dialogs/g;->i2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v11

    .line 1626
    invoke-virtual {v11}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v11

    .line 1630
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1631
    .line 1632
    invoke-virtual {v14}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1633
    .line 1634
    .line 1635
    move-result v14

    .line 1636
    invoke-virtual {v11, v0, v14}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;->c(IZ)I

    .line 1637
    .line 1638
    .line 1639
    move-result v11

    .line 1640
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1641
    .line 1642
    .line 1643
    goto :goto_9

    .line 1644
    :cond_29
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1645
    .line 1646
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 1647
    .line 1648
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1649
    .line 1650
    .line 1651
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1652
    .line 1653
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->j2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v10

    .line 1657
    invoke-virtual {v10}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v10

    .line 1661
    if-eqz v10, :cond_2b

    .line 1662
    .line 1663
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 1664
    .line 1665
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1666
    .line 1667
    invoke-static {v11}, Lcom/kongzue/dialogx/dialogs/g;->k2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v11

    .line 1671
    invoke-virtual {v11}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v11

    .line 1675
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1676
    .line 1677
    invoke-virtual {v14}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1678
    .line 1679
    .line 1680
    move-result v14

    .line 1681
    invoke-virtual {v11, v0, v14}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;->a(IZ)I

    .line 1682
    .line 1683
    .line 1684
    move-result v11

    .line 1685
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1686
    .line 1687
    .line 1688
    goto :goto_9

    .line 1689
    :cond_2a
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->j:Landroid/widget/LinearLayout;

    .line 1690
    .line 1691
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 1692
    .line 1693
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1694
    .line 1695
    .line 1696
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1697
    .line 1698
    invoke-static {v10}, Lcom/kongzue/dialogx/dialogs/g;->e2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v10

    .line 1702
    invoke-virtual {v10}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v10

    .line 1706
    if-eqz v10, :cond_2b

    .line 1707
    .line 1708
    iget-object v10, v1, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 1709
    .line 1710
    iget-object v11, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1711
    .line 1712
    invoke-static {v11}, Lcom/kongzue/dialogx/dialogs/g;->f2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v11

    .line 1716
    invoke-virtual {v11}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v11

    .line 1720
    iget-object v14, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1721
    .line 1722
    invoke-virtual {v14}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 1723
    .line 1724
    .line 1725
    move-result v14

    .line 1726
    invoke-virtual {v11, v0, v14}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;->b(IZ)I

    .line 1727
    .line 1728
    .line 1729
    move-result v11

    .line 1730
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1731
    .line 1732
    .line 1733
    :cond_2b
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 1734
    .line 1735
    goto/16 :goto_8

    .line 1736
    .line 1737
    :cond_2c
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1738
    .line 1739
    iget-boolean v2, v0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 1740
    .line 1741
    if-eqz v2, :cond_2e

    .line 1742
    .line 1743
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->f0()Z

    .line 1744
    .line 1745
    .line 1746
    move-result v0

    .line 1747
    if-eqz v0, :cond_2d

    .line 1748
    .line 1749
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 1750
    .line 1751
    new-instance v2, Lcom/kongzue/dialogx/dialogs/g$e$g;

    .line 1752
    .line 1753
    invoke-direct {v2, v1}, Lcom/kongzue/dialogx/dialogs/g$e$g;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    .line 1758
    .line 1759
    goto :goto_a

    .line 1760
    :cond_2d
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 1761
    .line 1762
    const/4 v2, 0x0

    .line 1763
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1764
    .line 1765
    .line 1766
    goto :goto_a

    .line 1767
    :cond_2e
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 1768
    .line 1769
    const/4 v2, 0x0

    .line 1770
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1771
    .line 1772
    .line 1773
    :goto_a
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1774
    .line 1775
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 1776
    .line 1777
    if-eqz v0, :cond_32

    .line 1778
    .line 1779
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    if-eqz v0, :cond_32

    .line 1784
    .line 1785
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1786
    .line 1787
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 1788
    .line 1789
    iget-object v3, v1, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 1790
    .line 1791
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 1792
    .line 1793
    invoke-virtual {v2, v3, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 1794
    .line 1795
    .line 1796
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 1797
    .line 1798
    const/4 v2, 0x0

    .line 1799
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    .line 1801
    .line 1802
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1803
    .line 1804
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 1805
    .line 1806
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v0

    .line 1810
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 1811
    .line 1812
    if-eqz v0, :cond_30

    .line 1813
    .line 1814
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->e:Lcom/kongzue/dialogx/interfaces/c0;

    .line 1815
    .line 1816
    instance-of v3, v0, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 1817
    .line 1818
    if-eqz v3, :cond_2f

    .line 1819
    .line 1820
    check-cast v0, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 1821
    .line 1822
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1823
    .line 1824
    .line 1825
    :cond_2f
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1826
    .line 1827
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 1828
    .line 1829
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v0

    .line 1833
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 1834
    .line 1835
    iput-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->e:Lcom/kongzue/dialogx/interfaces/c0;

    .line 1836
    .line 1837
    goto :goto_b

    .line 1838
    :cond_30
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1839
    .line 1840
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 1841
    .line 1842
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v0

    .line 1846
    const-string v2, "ScrollController"

    .line 1847
    .line 1848
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v0

    .line 1852
    instance-of v2, v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 1853
    .line 1854
    if-eqz v2, :cond_33

    .line 1855
    .line 1856
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/g$e;->e:Lcom/kongzue/dialogx/interfaces/c0;

    .line 1857
    .line 1858
    instance-of v3, v2, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 1859
    .line 1860
    if-eqz v3, :cond_31

    .line 1861
    .line 1862
    check-cast v2, Lcom/kongzue/dialogx/util/views/DialogScrollView;

    .line 1863
    .line 1864
    const/4 v3, 0x0

    .line 1865
    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1866
    .line 1867
    .line 1868
    :cond_31
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 1869
    .line 1870
    iput-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->e:Lcom/kongzue/dialogx/interfaces/c0;

    .line 1871
    .line 1872
    goto :goto_b

    .line 1873
    :cond_32
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 1874
    .line 1875
    const/16 v2, 0x8

    .line 1876
    .line 1877
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    .line 1879
    .line 1880
    :cond_33
    :goto_b
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 1881
    .line 1882
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->n2(Lcom/kongzue/dialogx/dialogs/g;)V

    .line 1883
    .line 1884
    .line 1885
    :cond_34
    :goto_c
    return-void
.end method

.method protected d()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e$i;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$i;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    sget p1, Lcom/kongzue/dialogx/dialogs/g;->h2:I

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    int-to-long v2, p1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->z2(Lcom/kongzue/dialogx/dialogs/g;)J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->A2(Lcom/kongzue/dialogx/dialogs/g;)J

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    sget p1, Lcom/kongzue/dialogx/dialogs/g;->i2:I

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    int-to-long v0, p1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->x2(Lcom/kongzue/dialogx/dialogs/g;)J

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->y2(Lcom/kongzue/dialogx/dialogs/g;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    :cond_4
    return-wide v0
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 4
    .line 5
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->p:Lcom/kongzue/dialogx/util/TextInfo;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 30
    .line 31
    :cond_0
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->q:Lcom/kongzue/dialogx/util/TextInfo;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 38
    .line 39
    :cond_1
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->o:Lcom/kongzue/dialogx/util/TextInfo;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 54
    .line 55
    :cond_3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 60
    .line 61
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 62
    .line 63
    :cond_4
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->n:Lcom/kongzue/dialogx/util/TextInfo;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 70
    .line 71
    :cond_5
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 72
    .line 73
    if-nez v1, :cond_6

    .line 74
    .line 75
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->s:Lcom/kongzue/dialogx/util/j;

    .line 76
    .line 77
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 78
    .line 79
    :cond_6
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->e1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 86
    .line 87
    sget-object v1, Lcom/kongzue/dialogx/DialogX;->v:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/g;->q1(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->d:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->f:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 147
    .line 148
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 154
    .line 155
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$a;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 164
    .line 165
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e$b;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$b;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->o:Landroid/widget/TextView;

    .line 174
    .line 175
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e$c;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$c;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->n:Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e$d;

    .line 186
    .line 187
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$d;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->k:Landroid/widget/TextView;

    .line 194
    .line 195
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e$e;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/g$e$e;-><init>(Lcom/kongzue/dialogx/dialogs/g$e;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->p1(Lcom/kongzue/dialogx/dialogs/g;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method
