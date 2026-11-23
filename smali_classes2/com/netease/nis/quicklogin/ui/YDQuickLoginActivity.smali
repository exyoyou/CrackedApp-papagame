.class public Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$f;,
        Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$e;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/netease/nis/quicklogin/view/PlayerView;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/netease/nis/quicklogin/view/FastClickButton;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field private l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field public r:Z

.field private s:Lcom/netease/nis/quicklogin/utils/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "accessToken"

    .line 20
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "phone"

    .line 21
    :try_start_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "randomId"

    .line 23
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 25
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xc

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt p2, v2, :cond_1

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 28
    :goto_0
    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    if-ge v4, v5, :cond_2

    const-string v5, "a"

    .line 29
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v2, p2}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method private a()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomViewHolders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;

    .line 95
    iget-object v2, v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 96
    invoke-direct {p0, v1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_ll_protocol:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 37
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_rl_privacy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 38
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacyCheckBox()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckBoxGravity()I

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckBoxGravity()I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxWidth()I

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxHeight()I

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyState()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 49
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 51
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 52
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 53
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 54
    :cond_6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 55
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 56
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 57
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 58
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    new-instance v3, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$c;

    invoke-direct {v3, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$c;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 61
    new-instance v3, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$d;

    invoke-direct {v3, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$d;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingAdd()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    .line 63
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingAdd()F

    move-result v4

    invoke-static {p0, v4}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 64
    invoke-virtual {v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingMul()F

    move-result v5

    cmpl-float v3, v5, v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingMul()F

    move-result v3

    goto :goto_2

    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    :goto_2
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 66
    :cond_a
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    invoke-static {p1, v1, v3}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Landroid/widget/TextView;)V

    .line 67
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacySize()I

    move-result p1

    if-eqz p1, :cond_b

    .line 68
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacySize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 69
    :cond_b
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDpSize()I

    move-result p1

    if-eqz p1, :cond_c

    .line 70
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDpSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextMarginLeft()I

    move-result p1

    if-eqz p1, :cond_d

    .line 72
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextMarginLeft()I

    move-result v1

    invoke-static {p1, v1}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;I)V

    .line 73
    :cond_d
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTopYOffset()I

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    move-result p1

    if-nez p1, :cond_e

    .line 74
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 75
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTopYOffset()I

    move-result p1

    .line 76
    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p1, v1

    .line 77
    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 78
    :cond_e
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    move-result p1

    if-eqz p1, :cond_f

    .line 79
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 80
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    move-result p1

    .line 81
    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 82
    :cond_f
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginLeft()I

    move-result p1

    if-eqz p1, :cond_10

    .line 83
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginLeft()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_4

    .line 84
    :cond_10
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/view/View;)V

    .line 85
    :goto_4
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginRight()I

    move-result p1

    if-eqz p1, :cond_11

    .line 86
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginRight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/view/View;I)V

    .line 87
    :cond_11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyTextGravityCenter()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 88
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    :cond_12
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextLayoutGravity()I

    move-result p1

    if-eqz p1, :cond_13

    .line 90
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextLayoutGravity()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method

.method private a(II)V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/quicklogin/listener/ClickEventListener;->onClick(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "operatorType"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->r:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->r:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 7
    sget-object v2, Lcom/netease/nis/quicklogin/utils/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    invoke-direct {p0, v1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 10
    sget-object v1, Lcom/netease/nis/quicklogin/utils/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(I)V

    :goto_0
    const-string v0, "maskNumber"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v0, "accessToken"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Ljava/lang/String;

    const-string v0, "gwAuth"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->o:Ljava/lang/String;

    const-string v0, "ydToken"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->p:Ljava/lang/String;

    const-string v0, "appKey"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(II)V

    return-void
.end method

.method private a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V
    .locals 2

    .line 97
    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    :cond_0
    iget v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 104
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$e;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_1
    iget-boolean v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->r:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "accessToken"

    if-eqz v2, :cond_0

    .line 6
    :try_start_2
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, "v2"

    .line 7
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "md5"

    .line 8
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sdk/base/api/ToolUtils;->getAppMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v2, "gwAuth"

    .line 10
    :try_start_4
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v2, :cond_2

    const-string v2, "timeend"

    const-wide/16 v3, 0x0

    .line 12
    invoke-static {p0, v2, v3, v4}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 13
    invoke-static {p0}, Lcom/sdk/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    .line 14
    sget v2, Lcom/netease/nis/quicklogin/b/a;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 15
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v1, :cond_2

    .line 19
    :try_start_5
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    return-object p0
.end method

.method private c()V
    .locals 8

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    .line 3
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_navigation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

    .line 4
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Landroid/widget/RelativeLayout;

    .line 5
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_et_number:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 6
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_brand:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_privacy:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_btn_oauth:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/quicklogin/view/FastClickButton;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 9
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_cb_privacy:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->finish()V

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    move-result-object v0

    new-instance v7, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$f;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Landroid/widget/RelativeLayout;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$f;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v7}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;)V

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogWidth()I

    move-result v2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 15
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogHeight()I

    move-result v3

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogX()I

    move-result v4

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 16
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogY()I

    move-result v5

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog()Z

    move-result v6

    move-object v1, p0

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;IIIIZ)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isLandscape()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;Z)V

    .line 19
    :goto_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d()V

    .line 20
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k()V

    .line 21
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e()V

    .line 22
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j()V

    .line 23
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h()V

    .line 24
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i()V

    .line 25
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f()V

    .line 26
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g()V

    .line 27
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundShadow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundShadow()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 29
    :cond_2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a()V

    .line 30
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_4
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_loading:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundImage()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGif()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGifDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_2

    .line 7
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    invoke-virtual {v4, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideo()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImage()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    if-eqz v3, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_8

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 16
    new-instance v2, Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-direct {v2, p0}, Lcom/netease/nis/quicklogin/view/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {v0, v4}, Lcom/netease/nis/quicklogin/view/PlayerView;->setLoadingImageResId(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    invoke-virtual {v2, v1}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/PlayerView;->setLoadingImageResId(I)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/view/PlayerView;->e()V

    .line 23
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    .line 24
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 25
    new-instance v0, Lcom/netease/nis/quicklogin/view/GifView;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/GifView;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {v0, v3}, Lcom/netease/nis/quicklogin/view/GifView;->setGifDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 27
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/GifView;->setGifResId(I)V

    .line 28
    :goto_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_8
    :goto_4
    return-void
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v1

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganDpSize()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganDpSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganColor()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganTopYOffset()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganTopYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganBottomYOffset()I

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganBottomYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganXOffset()I

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganXOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextColor()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextSize()I

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextDpSize()I

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextDpSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 16
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTopYOffset()I

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTopYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBottomYOffset()I

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBottomYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnXOffset()I

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnXOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/view/FastClickButton;

    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/FastClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method static synthetic h(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/utils/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_logo:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoWidth()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoHeight()I

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    const/high16 v3, 0x428c0000    # 70.0f

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 6
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v1, v3

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoTopYOffset()I

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoTopYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoBottomYOffset()I

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoBottomYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoXOffset()I

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoXOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 19
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideLogo()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberListener()Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/EditText;

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

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;

    .line 226
    .line 227
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackPressedAvailable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/netease/nis/quicklogin/R$layout;->yd_activity_quick_login:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c()Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 18
    .line 19
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 28
    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1, p0}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onCreate(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->s:Lcom/netease/nis/quicklogin/utils/h;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;
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

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Lcom/netease/nis/quicklogin/view/PlayerView;

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
