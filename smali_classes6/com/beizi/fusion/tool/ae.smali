.class public Lcom/beizi/fusion/tool/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/tool/ae$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Lcom/beizi/fusion/widget/CustomRoundImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/beizi/fusion/tool/ae$a;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/beizi/fusion/tool/ae$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/beizi/fusion/tool/ae$1;-><init>(Lcom/beizi/fusion/tool/ae;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/ae;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/ae;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private a(Landroid/content/Context;IILcom/beizi/ad/model/l;)V
    .locals 6

    const-string v0, "%"

    if-eqz p1, :cond_e

    if-nez p4, :cond_0

    goto/16 :goto_4

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->a()Lcom/beizi/ad/model/n;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-virtual {p4}, Lcom/beizi/ad/model/n;->a()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p4}, Lcom/beizi/ad/model/n;->c()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {p4}, Lcom/beizi/ad/model/n;->d()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p4}, Lcom/beizi/ad/model/n;->e()Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "0"

    if-eqz v4, :cond_2

    move-object v1, v5

    .line 64
    :cond_2
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "10%"

    .line 65
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v3, "90%"

    .line 66
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const-string p4, "80"

    .line 67
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 69
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/beizi/fusion/tool/ae;->j:I

    goto :goto_0

    .line 70
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/beizi/fusion/tool/ae;->j:I

    .line 71
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 73
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p3

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/beizi/fusion/tool/ae;->k:I

    goto :goto_1

    .line 74
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/beizi/fusion/tool/ae;->k:I

    .line 75
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/beizi/fusion/tool/ae;->l:I

    goto :goto_2

    .line 78
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/beizi/fusion/tool/ae;->l:I

    .line 79
    :goto_2
    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 80
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-virtual {p4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    mul-int p3, p3, p4

    div-int/lit8 p3, p3, 0x64

    iput p3, p0, Lcom/beizi/fusion/tool/ae;->m:I

    goto :goto_3

    .line 82
    :cond_b
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/tool/ae;->m:I

    .line 83
    :goto_3
    invoke-static {p1}, Lcom/beizi/fusion/tool/au;->m(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/tool/ae;->o:I

    .line 84
    iget p4, p0, Lcom/beizi/fusion/tool/ae;->l:I

    if-le p4, p3, :cond_c

    .line 85
    iput p3, p0, Lcom/beizi/fusion/tool/ae;->l:I

    .line 86
    :cond_c
    invoke-static {p1}, Lcom/beizi/fusion/tool/au;->n(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/tool/ae;->p:I

    .line 87
    iget p3, p0, Lcom/beizi/fusion/tool/ae;->m:I

    if-le p3, p1, :cond_d

    .line 88
    iput p1, p0, Lcom/beizi/fusion/tool/ae;->m:I

    .line 89
    :cond_d
    iget p1, p0, Lcom/beizi/fusion/tool/ae;->j:I

    iget p3, p0, Lcom/beizi/fusion/tool/ae;->l:I

    div-int/lit8 p4, p3, 0x2

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/beizi/fusion/tool/ae;->j:I

    if-gtz p1, :cond_e

    sub-int/2addr p2, p3

    .line 90
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/beizi/fusion/tool/ae;->j:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ae;->l:I

    return p0
.end method

.method static synthetic c(Lcom/beizi/fusion/tool/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ae;->m:I

    return p0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae;->i:Lcom/beizi/fusion/tool/ae$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/beizi/fusion/tool/ae;->r:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    :try_start_2
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ae;->r:Z

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/ae;->a()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae;->i:Lcom/beizi/fusion/tool/ae$a;

    invoke-interface {v0}, Lcom/beizi/fusion/tool/ae$a;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/beizi/fusion/tool/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ae;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/beizi/fusion/tool/ae;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/beizi/fusion/tool/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ae;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/beizi/fusion/tool/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ae;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/beizi/fusion/tool/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ae;->n:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/beizi/fusion/tool/ae;)Lcom/beizi/fusion/tool/ae$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/ae;->i:Lcom/beizi/fusion/tool/ae$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/beizi/fusion/tool/ae;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/tool/ae;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/beizi/fusion/tool/ae;)Lcom/beizi/fusion/widget/CustomRoundImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/ae;->d:Lcom/beizi/fusion/widget/CustomRoundImageView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    iget v1, p0, Lcom/beizi/fusion/tool/ae;->o:I

    iget v2, p0, Lcom/beizi/fusion/tool/ae;->p:I

    iget v3, p0, Lcom/beizi/fusion/tool/ae;->n:I

    const/16 v4, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/beizi/fusion/tool/q;->a(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;IILcom/beizi/ad/model/l;Lcom/beizi/fusion/tool/ae$a;)V
    .locals 4

    if-eqz p1, :cond_a

    if-nez p4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    :try_start_0
    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->i:Lcom/beizi/fusion/tool/ae$a;

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/tool/ae;->b:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->e()I

    move-result p5

    iput p5, p0, Lcom/beizi/fusion/tool/ae;->n:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    sget v0, Lcom/beizi/fusion/R$layout;->beizi_notification_window:I

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    .line 7
    sget v0, Lcom/beizi/fusion/R$id;->bz_notification_iv:I

    .line 8
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/beizi/fusion/widget/CustomRoundImageView;

    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->d:Lcom/beizi/fusion/widget/CustomRoundImageView;

    .line 9
    iget-object p5, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    sget v0, Lcom/beizi/fusion/R$id;->bz_notification_title_tv:I

    .line 10
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->e:Landroid/widget/TextView;

    .line 11
    iget-object p5, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    sget v0, Lcom/beizi/fusion/R$id;->bz_notification_desc_tv:I

    .line 12
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->f:Landroid/widget/TextView;

    .line 13
    iget-object p5, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    sget v0, Lcom/beizi/fusion/R$id;->bz_notification_action_container_ll:I

    .line 14
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->g:Landroid/widget/LinearLayout;

    .line 15
    iget-object p5, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    sget v0, Lcom/beizi/fusion/R$id;->bz_notification_action_tv:I

    .line 16
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/beizi/fusion/tool/ae;->h:Landroid/widget/TextView;

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/beizi/fusion/tool/ae;->a(Landroid/content/Context;IILcom/beizi/ad/model/l;)V

    .line 18
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->f()Ljava/lang/String;

    move-result-object p2

    const/high16 p3, 0x41700000    # 15.0f

    .line 19
    invoke-static {p1, p3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/tool/ae;->q:I

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p5, 0x8

    if-nez p3, :cond_1

    .line 21
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/beizi/fusion/tool/ae;->m:I

    iget v2, p0, Lcom/beizi/fusion/tool/ae;->q:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v0, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-direct {p3, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae;->d:Lcom/beizi/fusion/widget/CustomRoundImageView;

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-static {v1}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object p3

    new-instance v0, Lcom/beizi/fusion/tool/ae$2;

    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/tool/ae$2;-><init>(Lcom/beizi/fusion/tool/ae;Landroid/content/Context;)V

    invoke-virtual {p3, p2, v0}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae;->d:Lcom/beizi/fusion/widget/CustomRoundImageView;

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->g()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 29
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_3
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->h()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->f:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 32
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_4
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->i()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 35
    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->g:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->j()I

    move-result p2

    .line 38
    iget-object p5, p0, Lcom/beizi/fusion/tool/ae;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/beizi/fusion/tool/ae$3;

    invoke-direct {v0, p0, p2}, Lcom/beizi/fusion/tool/ae$3;-><init>(Lcom/beizi/fusion/tool/ae;I)V

    invoke-virtual {p5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_5
    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->h:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    const-string p5, "#80000000"

    .line 40
    iget v0, p0, Lcom/beizi/fusion/tool/ae;->m:I

    iget v2, p0, Lcom/beizi/fusion/tool/ae;->q:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2, p5, p3, v1, v0}, Lcom/beizi/fusion/tool/ar;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 41
    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 42
    :cond_6
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 43
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_7
    :goto_1
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->d()I

    move-result p1

    .line 45
    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->c:Landroid/view/View;

    new-instance p3, Lcom/beizi/fusion/tool/ae$4;

    invoke-direct {p3, p0, p1}, Lcom/beizi/fusion/tool/ae$4;-><init>(Lcom/beizi/fusion/tool/ae;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->b()I

    move-result p1

    .line 47
    iget-object p2, p0, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;

    if-eqz p2, :cond_8

    const/16 p3, 0x3e9

    int-to-long v0, p1

    .line 48
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    :cond_8
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->k()I

    move-result p2

    if-lez p2, :cond_9

    .line 50
    iget-object p3, p0, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;

    if-eqz p3, :cond_9

    add-int/2addr p2, p1

    int-to-long v0, p2

    const/16 p2, 0x3eb

    .line 51
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    :cond_9
    invoke-virtual {p4}, Lcom/beizi/ad/model/l;->c()I

    move-result p2

    if-lez p2, :cond_a

    .line 53
    iget-object p3, p0, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;

    if-eqz p3, :cond_a

    add-int/2addr p2, p1

    int-to-long p1, p2

    const/16 p4, 0x3ea

    .line 54
    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_2
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
