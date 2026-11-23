.class public Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;
.super Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$f;,
        Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;
    }
.end annotation


# static fields
.field private static U:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;


# instance fields
.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Lcom/netease/nis/quicklogin/view/PlayerView;

.field private K:Landroid/view/ViewGroup;

.field private L:Lcom/netease/nis/quicklogin/view/FastClickButton;

.field private M:Landroid/widget/EditText;

.field private N:Landroid/widget/CheckBox;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/lang/String;

.field private S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private T:Lcom/netease/nis/quicklogin/utils/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private a(II)V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/quicklogin/listener/ClickEventListener;->onClick(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(II)V

    return-void
.end method

.method private a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V
    .locals 2

    .line 3
    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->I:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 10
    new-instance v1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->K:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/utils/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->U:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 2
    .line 3
    return-object v0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomViewHolders()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, v1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private p()V
    .locals 8

    .line 1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_navigation:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_body:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->I:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->z()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_et_number:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/EditText;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 55
    .line 56
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_brand:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 65
    .line 66
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_privacy:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 75
    .line 76
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_btn_oauth:I

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 85
    .line 86
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_cb_privacy:I

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/CheckBox;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 95
    .line 96
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v7, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$f;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    iget-object v6, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->I:Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    move-object v1, v7

    .line 111
    move-object v2, p0

    .line 112
    invoke-direct/range {v1 .. v6}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$f;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v7}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogWidth()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogHeight()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogX()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogY()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog()Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    move-object v1, p0

    .line 157
    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;IIIIZ)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isLandscape()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;Z)V

    .line 168
    .line 169
    .line 170
    :goto_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->q()V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->x()V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->y()V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundShadow()Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_3

    .line 186
    .line 187
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 188
    .line 189
    if-eqz v0, :cond_3

    .line 190
    .line 191
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundShadow()Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 201
    .line 202
    .line 203
    :cond_3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->o()V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method private q()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundImage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGif()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGifDrawable()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    sget v4, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/view/View;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideo()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/4 v7, -0x1

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    if-eqz v4, :cond_8

    .line 113
    .line 114
    :cond_4
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 115
    .line 116
    invoke-virtual {v2, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 120
    .line 121
    invoke-direct {v2, p0}, Lcom/netease/nis/quicklogin/view/PlayerView;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iput-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 125
    .line 126
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 142
    .line 143
    invoke-virtual {v0, v4}, Lcom/netease/nis/quicklogin/view/PlayerView;->setLoadingImageResId(Landroid/graphics/drawable/Drawable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/PlayerView;->setLoadingImageResId(I)V

    .line 156
    .line 157
    .line 158
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 159
    .line 160
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    .line 162
    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/view/PlayerView;->e()V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 176
    .line 177
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lcom/netease/nis/quicklogin/view/GifView;

    .line 187
    .line 188
    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/GifView;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    if-eqz v3, :cond_7

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Lcom/netease/nis/quicklogin/view/GifView;->setGifDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/GifView;->setGifResId(I)V

    .line 204
    .line 205
    .line 206
    :goto_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 207
    .line 208
    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 215
    .line 216
    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_4
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget-object v1, Lcom/netease/nis/quicklogin/utils/e;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganSize()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganSize()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganDpSize()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganDpSize()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganColor()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganColor()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganTopYOffset()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganTopYOffset()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganBottomYOffset()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganBottomYOffset()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganXOffset()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganXOffset()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->P:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_1
    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnHeight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-float v1, v1

    .line 57
    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnText()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnText()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextColor()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextColor()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextSize()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextSize()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    int-to-float v1, v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextDpSize()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextDpSize()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    int-to-float v1, v1

    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTopYOffset()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTopYOffset()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 164
    .line 165
    .line 166
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBottomYOffset()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBottomYOffset()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 183
    .line 184
    .line 185
    :cond_7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnXOffset()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnXOffset()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 219
    .line 220
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundRes()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_a

    .line 241
    .line 242
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 243
    .line 244
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 245
    .line 246
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundRes()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    .line 258
    .line 259
    :cond_a
    :goto_2
    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_logo:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    :cond_0
    const/high16 v3, 0x428c0000    # 70.0f

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    .line 33
    invoke-static {p0, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-float v2, v2

    .line 38
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-nez v2, :cond_2

    .line 47
    .line 48
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {p0, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    move-object v1, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 65
    .line 66
    int-to-float v1, v1

    .line 67
    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    int-to-float v2, v2

    .line 72
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    move-object v1, v3

    .line 80
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoTopYOffset()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoTopYOffset()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoBottomYOffset()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoBottomYOffset()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoXOffset()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoXOffset()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    .line 182
    .line 183
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideLogo()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_9

    .line 190
    .line 191
    const/4 v1, 0x4

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    :cond_9
    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberSize()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberSize()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberDpSize()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberDpSize()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberColor()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberColor()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTypeface()Landroid/graphics/Typeface;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTypeface()Landroid/graphics/Typeface;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTopYOffset()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTopYOffset()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBottomYOffset()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBottomYOffset()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBackgroundRes()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_6

    .line 134
    .line 135
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBackgroundRes()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberXOffset()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberXOffset()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberListener()Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberListener()Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->M:Landroid/widget/EditText;

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v0, v1, v2}, Lcom/netease/nis/quicklogin/listener/MaskNumberListener;->onGetMaskNumber(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_2
    return-void
.end method

.method private v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackgroundColor()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackgroundColor()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideNav()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavHeight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 58
    .line 59
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_navigation:I

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .line 72
    if-eqz v0, :cond_9

    .line 73
    .line 74
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideBackIcon()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIcon()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIcon()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconWidth()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    int-to-float v2, v2

    .line 143
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 148
    .line 149
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconHeight()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    int-to-float v2, v2

    .line 156
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 161
    .line 162
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconGravity()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const/16 v3, 0xb

    .line 169
    .line 170
    if-nez v2, :cond_6

    .line 171
    .line 172
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconGravity()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    const/4 v4, 0x5

    .line 191
    if-ne v2, v4, :cond_7

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_7
    const/16 v3, 0x9

    .line 195
    .line 196
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    .line 198
    .line 199
    :goto_2
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    int-to-float v2, v2

    .line 214
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/4 v3, 0x0

    .line 219
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 220
    .line 221
    .line 222
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    new-instance v1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$b;

    .line 226
    .line 227
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$b;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    :cond_9
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_navigation:I

    .line 234
    .line 235
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/TextView;

    .line 240
    .line 241
    if-eqz v0, :cond_f

    .line 242
    .line 243
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitle()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_a

    .line 254
    .line 255
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitle()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleColor()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_b

    .line 271
    .line 272
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleColor()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    .line 280
    .line 281
    :cond_b
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleSize()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    const/4 v2, 0x1

    .line 288
    if-eqz v1, :cond_c

    .line 289
    .line 290
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleSize()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    int-to-float v1, v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_c
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDpSize()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_d

    .line 308
    .line 309
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDpSize()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    int-to-float v1, v1

    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 317
    .line 318
    .line 319
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isNavTitleBold()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_e

    .line 326
    .line 327
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 332
    .line 333
    .line 334
    :cond_e
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawable()Landroid/graphics/drawable/Drawable;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    if-eqz v1, :cond_f

    .line 341
    .line 342
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawable()Landroid/graphics/drawable/Drawable;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    const/4 v2, 0x0

    .line 349
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawablePadding()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_f

    .line 359
    .line 360
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 361
    .line 362
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawablePadding()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 367
    .line 368
    .line 369
    :cond_f
    return-void
.end method

.method private w()V
    .locals 7

    .line 1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_ll_protocol:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_rl_privacy:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacyCheckBox()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckBoxGravity()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckBoxGravity()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxWidth()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxWidth()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    int-to-float v2, v2

    .line 81
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    .line 87
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxHeight()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxHeight()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    int-to-float v2, v2

    .line 108
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    .line 114
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->Q:Ljava/lang/ref/WeakReference;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/4 v2, 0x1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->Q:Ljava/lang/ref/WeakReference;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/widget/CheckBox;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    .line 133
    .line 134
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyState()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v3, 0x0

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 157
    .line 158
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 159
    .line 160
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_8

    .line 179
    .line 180
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 181
    .line 182
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 183
    .line 184
    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_7

    .line 210
    .line 211
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 212
    .line 213
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_8

    .line 234
    .line 235
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 236
    .line 237
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 238
    .line 239
    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 240
    .line 241
    invoke-virtual {v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v4, v5}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    .line 251
    .line 252
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->N:Landroid/widget/CheckBox;

    .line 253
    .line 254
    new-instance v4, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;

    .line 255
    .line 256
    invoke-direct {v4, p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 263
    .line 264
    if-eqz v1, :cond_13

    .line 265
    .line 266
    new-instance v4, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$d;

    .line 267
    .line 268
    invoke-direct {v4, p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$d;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingAdd()F

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    const/4 v4, 0x0

    .line 281
    cmpl-float v1, v1, v4

    .line 282
    .line 283
    if-eqz v1, :cond_a

    .line 284
    .line 285
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 286
    .line 287
    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 288
    .line 289
    invoke-virtual {v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingAdd()F

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-static {p0, v5}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    int-to-float v5, v5

    .line 298
    iget-object v6, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 299
    .line 300
    invoke-virtual {v6}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingMul()F

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    cmpl-float v4, v6, v4

    .line 305
    .line 306
    if-lez v4, :cond_9

    .line 307
    .line 308
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingMul()F

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    goto :goto_2

    .line 315
    :cond_9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 316
    .line 317
    :goto_2
    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 318
    .line 319
    .line 320
    :cond_a
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 321
    .line 322
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-static {v3, v1, v4}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Landroid/widget/TextView;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacySize()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_b

    .line 334
    .line 335
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 336
    .line 337
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacySize()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    int-to-float v2, v2

    .line 344
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_b
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDpSize()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_c

    .line 355
    .line 356
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 357
    .line 358
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 359
    .line 360
    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDpSize()I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    int-to-float v3, v3

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 366
    .line 367
    .line 368
    :cond_c
    :goto_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 369
    .line 370
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextMarginLeft()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_d

    .line 375
    .line 376
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 377
    .line 378
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 379
    .line 380
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextMarginLeft()I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    invoke-static {v1, v2}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;I)V

    .line 385
    .line 386
    .line 387
    :cond_d
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 388
    .line 389
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTopYOffset()I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_e

    .line 394
    .line 395
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-nez v1, :cond_e

    .line 402
    .line 403
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 404
    .line 405
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTopYOffset()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/content/Context;)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    add-int/2addr v1, v2

    .line 414
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 415
    .line 416
    .line 417
    :cond_e
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 418
    .line 419
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_f

    .line 424
    .line 425
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 432
    .line 433
    .line 434
    :cond_f
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 435
    .line 436
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginLeft()I

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_10

    .line 441
    .line 442
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 443
    .line 444
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginLeft()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    .line 449
    .line 450
    .line 451
    goto :goto_4

    .line 452
    :cond_10
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/view/View;)V

    .line 453
    .line 454
    .line 455
    :goto_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 456
    .line 457
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginRight()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_11

    .line 462
    .line 463
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 464
    .line 465
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 466
    .line 467
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginRight()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/view/View;I)V

    .line 472
    .line 473
    .line 474
    :cond_11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyTextGravityCenter()Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_12

    .line 481
    .line 482
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 483
    .line 484
    const/16 v1, 0x11

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 487
    .line 488
    .line 489
    :cond_12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextLayoutGravity()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_13

    .line 496
    .line 497
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 504
    .line 505
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 506
    .line 507
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextLayoutGravity()I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 512
    .line 513
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->O:Landroid/widget/TextView;

    .line 514
    .line 515
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    .line 517
    .line 518
    :cond_13
    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getStatusBarColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isStatusBarDarkColor()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private y()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1020002

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGif()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGifDrawable()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideo()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->v()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->t()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->r()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/16 v3, 0x8

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/view/View;

    .line 90
    .line 91
    instance-of v4, v2, Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    move-object v4, v2

    .line 96
    check-cast v4, Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    const-string v5, "****"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    sget v6, Lcom/netease/nis/quicklogin/R$id;->yd_et_number:I

    .line 125
    .line 126
    if-eq v5, v6, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Landroid/widget/EditText;

    .line 139
    .line 140
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Landroid/view/ViewGroup;

    .line 154
    .line 155
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :cond_3
    instance-of v4, v2, Landroid/widget/CheckBox;

    .line 159
    .line 160
    if-eqz v4, :cond_2

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    sget v5, Lcom/netease/nis/quicklogin/R$id;->yd_cb_privacy:I

    .line 167
    .line 168
    if-eq v4, v5, :cond_2

    .line 169
    .line 170
    check-cast v2, Landroid/widget/CheckBox;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Landroid/view/ViewGroup;

    .line 181
    .line 182
    if-eqz v4, :cond_4

    .line 183
    .line 184
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :cond_4
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 188
    .line 189
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iput-object v3, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->Q:Ljava/lang/ref/WeakReference;

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_5
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->u()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    const/4 v2, 0x3

    .line 203
    if-lt v1, v2, :cond_6

    .line 204
    .line 205
    const/4 v1, 0x2

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 211
    .line 212
    if-eqz v2, :cond_6

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/view/ViewGroup;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_6
    const/4 v0, 0x0

    .line 222
    :goto_1
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    .line 223
    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    const/4 v2, 0x1

    .line 231
    if-ne v1, v2, :cond_7

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->s()V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->L:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 240
    .line 241
    if-eqz v1, :cond_7

    .line 242
    .line 243
    new-instance v2, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;

    .line 244
    .line 245
    invoke-direct {v2, p0, v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;Landroid/view/ViewGroup;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/view/FastClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    :cond_7
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->w()V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method private z()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->U:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->R:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "\u79fb\u52a8\u63a5\u53e3\u6dfb\u52a0\u6613\u76fe\u5e03\u5c40\u6587\u4ef6\u5931\u8d25"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, -0x3

    .line 21
    const-string v2, "\u79fb\u52a8\u6dfb\u52a0\u6613\u76fe\u5e03\u5c40\u6587\u4ef6\u5931\u8d25"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/g;->a(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->finish()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->K:Landroid/view/ViewGroup;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->K:Landroid/view/ViewGroup;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->K:Landroid/view/ViewGroup;

    .line 72
    .line 73
    const/16 v1, 0x8

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_loading:I

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->K:Landroid/view/ViewGroup;

    .line 88
    .line 89
    :goto_1
    const/4 v0, 0x1

    .line 90
    return v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-object v0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->U:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->U:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c()Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 13
    .line 14
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sput-object p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->U:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 23
    .line 24
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->R:Ljava/lang/String;

    .line 33
    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onCreate(Landroid/app/Activity;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->T:Lcom/netease/nis/quicklogin/utils/h;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onDestroy(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->G:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->H:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->I:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackPressedAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onPause(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onePass [timeEnd]"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onResume(Landroid/app/Activity;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onStart(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/view/PlayerView;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->S:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onStop(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->J:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method
