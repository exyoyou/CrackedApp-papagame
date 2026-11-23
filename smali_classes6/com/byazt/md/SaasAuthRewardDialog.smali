.class public Lcom/byazt/md/SaasAuthRewardDialog;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15d,
        0x950
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/md/SaasAuthRewardDialog$c;
    }
.end annotation


# static fields
.field public static da:Z


# instance fields
.field public a:Z

.field public c:Lcom/byazt/md/SaasAuthEnvelope;

.field public i:I

.field public n:Landroid/view/animation/ScaleAnimation;

.field public sp:Lcom/byazt/ete/ic;

.field public tt:Lcom/byazt/md/BaseSaasEnvelope;

.field public uj:Landroid/view/animation/RotateAnimation;

.field public ve:Landroid/widget/ImageView;

.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->a:Z

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/md/SaasAuthRewardDialog;->c(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/md/SaasAuthRewardDialog;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->uj:Landroid/view/animation/RotateAnimation;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 16
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->ve:Landroid/widget/ImageView;

    :try_start_0
    const-string v0, "saas_light_shine.webp"

    .line 17
    invoke-static {v0}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->ve:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 18
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->ve:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    invoke-static {p1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v0

    .line 20
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    iget-object v2, p0, Lcom/byazt/md/SaasAuthRewardDialog;->ve:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v1, Lcom/byazt/md/SaasAuthEnvelope;

    invoke-direct {v1, p1}, Lcom/byazt/md/SaasAuthEnvelope;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    const p1, 0x7e06fe08

    .line 24
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 25
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object p1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    new-instance v0, Lcom/byazt/md/SaasAuthRewardDialog$1;

    invoke-direct {v0, p0}, Lcom/byazt/md/SaasAuthRewardDialog$1;-><init>(Lcom/byazt/md/SaasAuthRewardDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    new-instance v0, Lcom/byazt/md/SaasAuthRewardDialog$2;

    invoke-direct {v0, p0}, Lcom/byazt/md/SaasAuthRewardDialog$2;-><init>(Lcom/byazt/md/SaasAuthRewardDialog;)V

    invoke-virtual {p1, v0}, Lcom/byazt/md/SaasAuthEnvelope;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/md/SaasAuthRewardDialog;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/md/SaasAuthRewardDialog;->tt()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/md/SaasAuthRewardDialog;)Landroid/view/animation/RotateAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->uj:Landroid/view/animation/RotateAnimation;

    return-object p0
.end method

.method private tt()V
    .locals 5

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->a:Z

    .line 3
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->sp:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->sl()Lcom/byazt/ete/sv;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ete/sv;->da()Lcom/byazt/ete/sv$tt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/md/SaasAuthCouponEnvelope;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/byazt/ete/sv;->da()Lcom/byazt/ete/sv$tt;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/byazt/md/SaasAuthCouponEnvelope;-><init>(Landroid/content/Context;Lcom/byazt/ete/sv$tt;)V

    iput-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/sv;->sl()Lcom/byazt/ete/sv$c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lcom/byazt/md/SaasAuthProductEnvelope;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/byazt/ete/sv;->sl()Lcom/byazt/ete/sv$c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/byazt/md/SaasAuthProductEnvelope;-><init>(Landroid/content/Context;Lcom/byazt/ete/sv$c;)V

    iput-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    invoke-virtual {v0}, Lcom/byazt/md/BaseSaasEnvelope;->c()V

    .line 12
    new-instance v0, Lcom/byazt/hkv/c;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/md/SaasAuthRewardDialog;->sp:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/md/SaasAuthRewardDialog;->x:Ljava/lang/String;

    iget v4, p0, Lcom/byazt/md/SaasAuthRewardDialog;->i:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    const/16 v1, 0xb65

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 15
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/byazt/rv/c;->c()Lcom/byazt/rv/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/md/SaasAuthRewardDialog;->sp:Lcom/byazt/ete/ic;

    .line 17
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/byazt/md/SaasAuthRewardDialog;->sp:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/rv/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x65

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "live_saas_interaction_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    new-instance v2, Lcom/byazt/md/SaasAuthRewardDialog$4;

    invoke-direct {v2, p0}, Lcom/byazt/md/SaasAuthRewardDialog$4;-><init>(Lcom/byazt/md/SaasAuthRewardDialog;)V

    invoke-virtual {v1, v2}, Lcom/byazt/md/BaseSaasEnvelope;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    invoke-virtual {v1, v0}, Lcom/byazt/md/BaseSaasEnvelope;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/byazt/md/SaasAuthEnvelope;->tt()V

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/md/SaasAuthRewardDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->ve:Landroid/widget/ImageView;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/byazt/md/SaasAuthRewardDialog;->da:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/md/SaasAuthRewardDialog$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/byazt/md/SaasAuthRewardDialog$c;-><init>(Lcom/byazt/md/SaasAuthRewardDialog$1;)V

    const-string v1, "saas_light_shine.webp"

    .line 4
    invoke-static {v1}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    const-string v1, "saas_red_envelope.webp"

    .line 5
    invoke-static {v1}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    const-string v1, "saas_reward_goods_bg.webp"

    .line 6
    invoke-static {v1}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    const-string v1, "saas_reward_coupon_bg.webp"

    .line 7
    invoke-static {v1}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    const-string v1, "saas_reward_title.webp"

    .line 8
    invoke-static {v1}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/byazt/md/SaasAuthRewardDialog;->da:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/byazt/md/SaasAuthEnvelope;->tt()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/byazt/md/BaseSaasEnvelope;->tt()V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->uj:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 36
    iput-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->uj:Landroid/view/animation/RotateAnimation;

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->n:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 39
    iput-object v1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->n:Landroid/view/animation/ScaleAnimation;

    .line 40
    :cond_3
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x8

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Lcom/byazt/omf/d;->tt(Z)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    .line 3
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/apd/tt;->ve()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->sl()Lcom/byazt/ete/sv;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/byazt/ete/sv;->sl()Lcom/byazt/ete/sv$c;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/byazt/ete/sv;->da()Lcom/byazt/ete/sv$tt;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/ete/sv;->i()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iput-object p1, p0, Lcom/byazt/md/SaasAuthRewardDialog;->sp:Lcom/byazt/ete/ic;

    .line 8
    iput-object p2, p0, Lcom/byazt/md/SaasAuthRewardDialog;->x:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/byazt/md/SaasAuthRewardDialog;->i:I

    const-string p1, "#aa000000"

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/md/SaasAuthRewardDialog;->c(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/byazt/md/SaasAuthRewardDialog;->ve()V

    return-void

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/byazt/omf/d;->tt(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/high16 v7, 0x3f000000    # 0.5f

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const/high16 v9, 0x3f000000    # 0.5f

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->n:Landroid/view/animation/ScaleAnimation;

    .line 26
    .line 27
    const-wide/16 v1, 0x258

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->n:Landroid/view/animation/ScaleAnimation;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->n:Landroid/view/animation/ScaleAnimation;

    .line 39
    .line 40
    new-instance v2, Lcom/byazt/md/SaasAuthRewardDialog$3;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/byazt/md/SaasAuthRewardDialog$3;-><init>(Lcom/byazt/md/SaasAuthRewardDialog;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->ve:Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/md/SaasAuthRewardDialog;->n:Landroid/view/animation/ScaleAnimation;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/byazt/omf/d;->tt(Z)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->c:Lcom/byazt/md/SaasAuthEnvelope;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/byazt/md/SaasAuthEnvelope;->c()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-wide/16 v1, 0x7d0

    .line 72
    .line 73
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/md/SaasAuthRewardDialog;->a:Z

    .line 78
    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-wide/16 v1, 0x1388

    .line 86
    .line 87
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/byazt/md/SaasAuthRewardDialog;->tt()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    const/16 v0, 0x8

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
