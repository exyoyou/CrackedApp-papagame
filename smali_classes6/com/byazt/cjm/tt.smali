.class public Lcom/byazt/cjm/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cjm/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0xd
    }
.end annotation


# instance fields
.field public a:I

.field public final c:Lcom/byazt/cjm/c$c;

.field public da:Ljava/lang/String;

.field public i:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sl:Ljava/lang/String;

.field public sp:I

.field public t:Ljava/lang/String;

.field public tt:Lcom/byazt/hc/c;

.field public u:Ljava/lang/String;

.field public final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public x:Z

.field public yp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/c$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/cjm/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/cjm/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/cjm/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    iput v1, p0, Lcom/byazt/cjm/tt;->sp:I

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/byazt/cjm/tt;->i:Z

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    iput-object v0, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/cjm/tt;->t:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/cjm/tt;->u:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/cjm/tt;->yp:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lcom/byazt/cjm/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/cjm/tt;->a:I

    return p0
.end method

.method public static synthetic c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    return-object p0
.end method

.method private c(Landroid/content/Context;)Lcom/byazt/ff/TTProgressBar;
    .locals 4

    .line 14
    new-instance v0, Lcom/byazt/ff/TTProgressBar;

    invoke-direct {v0, p1}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xf0

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 16
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v2, "#77000000"

    .line 19
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    invoke-static {p1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 22
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 23
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 24
    new-instance v1, Lcom/byazt/cjm/tt$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/byazt/cjm/tt$6;-><init>(Lcom/byazt/cjm/tt;Landroid/content/Context;Lcom/byazt/ff/TTProgressBar;)V

    const/16 v2, 0x140

    const-string v3, "tt_normalscreen_loading"

    invoke-static {p1, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    return-object v0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "play_again_allow"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "play_again_reward_name"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    const-string v1, "play_again_reward_amount"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    const-string v1, "extra_info"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cjm/tt;->yp:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcom/byazt/cjm/tt;->i:Z

    if-eqz v0, :cond_0

    .line 13
    new-instance p1, Lcom/byazt/cjm/tt$2;

    invoke-direct {p1, p0}, Lcom/byazt/cjm/tt$2;-><init>(Lcom/byazt/cjm/tt;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cjm/tt;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/cjm/tt;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cjm/tt;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/cjm/tt;->uj(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic da(Lcom/byazt/cjm/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cjm/tt;->i()V

    return-void
.end method

.method private da()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/l;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/cjm/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    new-instance v0, Lcom/byazt/cjm/tt$4;

    invoke-direct {v0, p0}, Lcom/byazt/cjm/tt$4;-><init>(Lcom/byazt/cjm/tt;)V

    .line 5
    new-instance v1, Lcom/byazt/hc/tt;

    iget-object v2, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v2}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v3}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/byazt/hc/tt;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    iput-object v1, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    .line 6
    iget-object v2, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/qq/tt;->uj(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    iget-object v2, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/qq/tt;->ve(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    iget-object v2, p0, Lcom/byazt/cjm/tt;->yp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/hc/c;->c(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v1}, Lcom/byazt/cjm/c$c;->uj()V

    .line 10
    iget-object v1, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    invoke-virtual {v1, v0}, Lcom/byazt/hc/c;->c(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->ve()Z

    move-result v0

    return v0
.end method

.method public static synthetic i(Lcom/byazt/cjm/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cjm/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private i()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/cjm/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/l;->uj(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v0, p0, Lcom/byazt/cjm/tt;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v2}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/byazt/lvl/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/dj/tt;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v1}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/ete/l;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    move-result-object v2

    iget v3, p0, Lcom/byazt/cjm/tt;->sp:I

    new-instance v4, Lcom/byazt/cf/uj;

    new-instance v5, Lcom/byazt/cjm/tt$3;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/byazt/cjm/tt$3;-><init>(Lcom/byazt/cjm/tt;Ljava/util/function/Function;)V

    invoke-direct {v4, v5}, Lcom/byazt/cf/uj;-><init>(Lcom/byazt/nh/sp;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/byazt/cf/sp;->c(Lcom/byazt/dj/tt;Ljava/lang/String;ILcom/byazt/cf/uj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 11
    :catchall_0
    iget-object v0, p0, Lcom/byazt/cjm/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u5f53\u524d\u65e0\u65b0\u89c6\u9891\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    .line 12
    invoke-direct {p0, v0}, Lcom/byazt/cjm/tt;->uj(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/cjm/tt;)Lcom/byazt/hc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    return-object p0
.end method

.method private sl()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cjm/tt$7;

    .line 2
    .line 3
    const-string v1, "executeMultiProcessCallback"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/cjm/tt$7;-><init>(Lcom/byazt/cjm/tt;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/cjm/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/cjm/tt;->sp:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/cjm/tt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/cjm/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cjm/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private uj(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/byazt/cjm/tt$5;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cjm/tt$5;-><init>(Lcom/byazt/cjm/tt;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/cjm/tt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/cjm/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/cjm/tt;->x:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cjm/tt;->t:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/cjm/tt;->sp:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/cjm/tt;->t:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/cjm/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/cjm/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qq/tt;->tt()Z

    move-result v0

    return v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cjm/tt;->u:Ljava/lang/String;

    return-object v0
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/cjm/tt;->a:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/cjm/tt;->u:Ljava/lang/String;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/cjm/tt;->x:Z

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/cjm/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public uj()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/l;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/cjm/tt;->x:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 5
    iget v0, p0, Lcom/byazt/cjm/tt;->sp:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/byazt/cjm/c$c;->c(ZLjava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-boolean v1, p0, Lcom/byazt/cjm/tt;->i:Z

    return-void

    .line 8
    :cond_3
    iput-boolean v2, p0, Lcom/byazt/cjm/tt;->i:Z

    .line 9
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    iget-object v3, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/byazt/cjm/c$c;->c(ZLjava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/byazt/cjm/tt;->sp:I

    add-int/2addr v0, v1

    .line 11
    new-instance v1, Lcom/byazt/cjm/tt$1;

    const-string v2, "executeMultiProcessCallback"

    invoke-direct {v1, p0, v2, v0}, Lcom/byazt/cjm/tt$1;-><init>(Lcom/byazt/cjm/tt;Ljava/lang/String;I)V

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public ve()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/cjm/tt;->tt:Lcom/byazt/hc/c;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/qq/tt;->ve()V

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/byazt/cjm/tt;->sl()V

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mPlayAgainRewardAmount"

    .line 15
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/cjm/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "isPlayAgain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "mSourceRitId"

    .line 17
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/cjm/tt;->a:I

    const-string p1, "mNowPlayAgainCount"

    .line 18
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/cjm/tt;->sp:I

    const-string p1, "isCustomPlayAgain"

    .line 19
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/cjm/tt;->x:Z

    const-string p1, "isCanPlayAgain"

    .line 20
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/cjm/tt;->i:Z

    const-string p1, "mPlayAgainRewardName"

    .line 21
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    const-string p1, "mLastRewardName"

    .line 23
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cjm/tt;->t:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ve(I)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/cjm/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/cjm/tt;->i:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v0, "reward_again"

    const-string v2, "reward_endcard"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {p1}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/byazt/cjm/tt;->c(Landroid/content/Context;)Lcom/byazt/ff/TTProgressBar;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lcom/byazt/cjm/c$c;->c(ILcom/byazt/ff/TTProgressBar;)V

    .line 6
    invoke-direct {p0}, Lcom/byazt/cjm/tt;->i()V

    .line 7
    iget-object p1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {p1}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    const-string v1, "videoplaying"

    invoke-static {p1, v2, v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/byazt/cjm/tt;->da()Z

    move-result p1

    return p1

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {p1}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/byazt/cjm/tt;->c(Landroid/content/Context;)Lcom/byazt/ff/TTProgressBar;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lcom/byazt/cjm/c$c;->c(ILcom/byazt/ff/TTProgressBar;)V

    .line 10
    invoke-direct {p0}, Lcom/byazt/cjm/tt;->i()V

    .line 11
    iget-object p1, p0, Lcom/byazt/cjm/tt;->c:Lcom/byazt/cjm/c$c;

    invoke-interface {p1}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    const-string v1, "endcard"

    invoke-static {p1, v2, v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public x()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isPlayAgain"

    .line 3
    iget-object v2, p0, Lcom/byazt/cjm/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mSourceRitId"

    .line 4
    iget v2, p0, Lcom/byazt/cjm/tt;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mNowPlayAgainCount"

    .line 5
    iget v2, p0, Lcom/byazt/cjm/tt;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isCustomPlayAgain"

    .line 6
    iget-boolean v2, p0, Lcom/byazt/cjm/tt;->x:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isCanPlayAgain"

    .line 7
    iget-boolean v2, p0, Lcom/byazt/cjm/tt;->i:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mPlayAgainRewardName"

    .line 8
    iget-object v2, p0, Lcom/byazt/cjm/tt;->da:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mPlayAgainRewardAmount"

    .line 9
    iget-object v2, p0, Lcom/byazt/cjm/tt;->sl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLastRewardName"

    .line 10
    iget-object v2, p0, Lcom/byazt/cjm/tt;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLastRewardAmount"

    .line 11
    iget-object v2, p0, Lcom/byazt/cjm/tt;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
