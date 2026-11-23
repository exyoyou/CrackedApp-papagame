.class public Lcom/byazt/vn/tt;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x294,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/vn/RoundImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public az:F

.field public c:Ljava/lang/String;

.field public cf:F

.field public ij:I

.field public kz:Ljava/lang/String;

.field public mq:F

.field public vi:I

.field public vp:Z

.field public yo:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/vn/tt;->yo:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/byazt/vn/tt;->vi:I

    .line 10
    .line 11
    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput p1, p0, Lcom/byazt/vn/tt;->mq:F

    .line 14
    .line 15
    iput p1, p0, Lcom/byazt/vn/tt;->cf:F

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/byazt/vn/tt;->ij:I

    .line 19
    .line 20
    const/high16 p1, 0x42480000    # 50.0f

    .line 21
    .line 22
    iput p1, p0, Lcom/byazt/vn/tt;->az:F

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/byazt/vn/tt;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/vn/tt;->mq:F

    return p0
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/byazt/vn/RoundImageView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "local://"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/byazt/vn/tt;->sp()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "raw"

    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 49
    .line 50
    check-cast v1, Lcom/byazt/vn/RoundImageView;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2, v0}, Lcom/byazt/cd/uj;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {v1, v0}, Lcom/byazt/vn/RoundImageView;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 63
    .line 64
    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/byazt/vn/tt;->c(Landroid/widget/ImageView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :catchall_0
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "@"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 92
    .line 93
    check-cast v1, Lcom/byazt/vn/RoundImageView;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/byazt/vn/RoundImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/byazt/vn/tt;->q()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static synthetic c(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method private varargs c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 30
    invoke-direct {p0, v0, p2, p3}, Lcom/byazt/vn/tt;->c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic da(Lcom/byazt/vn/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/vn/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/vn/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/vn/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/vn/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/vn/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private q()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/byazt/vn/tt;->mq:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/byazt/sz/sp;->c()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v3, Lcom/byazt/vn/tt$1;

    .line 28
    .line 29
    invoke-direct {v3, p0}, Lcom/byazt/vn/tt$1;-><init>(Lcom/byazt/vn/tt;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/byazt/sz/sp;->c()V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 52
    .line 53
    iget-object v4, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 56
    .line 57
    move-object v5, v0

    .line 58
    check-cast v5, Landroid/widget/ImageView;

    .line 59
    .line 60
    check-cast v0, Lcom/byazt/vn/RoundImageView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 67
    .line 68
    check-cast v0, Lcom/byazt/vn/RoundImageView;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    new-instance v8, Lcom/byazt/vn/tt$2;

    .line 75
    .line 76
    invoke-direct {v8, p0}, Lcom/byazt/vn/tt$2;-><init>(Lcom/byazt/vn/tt;)V

    .line 77
    .line 78
    .line 79
    invoke-interface/range {v2 .. v8}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Landroid/widget/ImageView;IILcom/byazt/sa/c$c;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/byazt/vn/tt;->vp:Z

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget v0, p0, Lcom/byazt/vn/tt;->cf:F

    .line 87
    .line 88
    cmpl-float v0, v0, v1

    .line 89
    .line 90
    if-lez v0, :cond_4

    .line 91
    .line 92
    :cond_3
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v3, Lcom/byazt/vn/tt$3;

    .line 105
    .line 106
    invoke-direct {v3, p0}, Lcom/byazt/vn/tt$3;-><init>(Lcom/byazt/vn/tt;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public static synthetic rh(Lcom/byazt/vn/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/vn/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method private sl(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 3

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "centerCrop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "fitCenter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "fitXY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "fill"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "crop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "fit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "centerInside"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "fitStart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "fitEnd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 5
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 6
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 7
    :pswitch_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 8
    :pswitch_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 9
    :pswitch_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 10
    :pswitch_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_9
        -0x4bf440f6 -> :sswitch_8
        -0x1f1fd52f -> :sswitch_7
        -0x144ecb4f -> :sswitch_6
        0x18c11 -> :sswitch_5
        0x2eba90 -> :sswitch_4
        0x2ff583 -> :sswitch_3
        0x5ced6d2 -> :sswitch_2
        0x1f0a33c6 -> :sswitch_1
        0x453ac885 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic sp(Lcom/byazt/vn/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/vn/tt;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/vn/tt;->cf:F

    return p0
.end method

.method public static synthetic yp(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/vn/tt;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->a()V

    .line 3
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/i/k;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/i/l;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    invoke-static {v0}, Lz1/a;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_0
    return-void
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/vn/tt;->x()Lcom/byazt/vn/RoundImageView;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/byazt/cd/uj;->tt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "imageBgBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "tintColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "erase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "isBgGaussianBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "eraseRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "imageBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "scaleType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "scaleMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/vn/tt;->cf:F

    return-void

    .line 8
    :pswitch_1
    invoke-static {p2}, Lcom/byazt/cd/c;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/vn/tt;->vi:I

    return-void

    .line 9
    :pswitch_2
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/vn/tt;->ij:I

    if-ne p1, v1, :cond_a

    .line 10
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 11
    check-cast p1, Lcom/byazt/vn/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/byazt/vn/RoundImageView;->setEraseEnabled(Z)V

    return-void

    .line 12
    :pswitch_3
    iput-object p2, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    return-void

    .line 13
    :pswitch_4
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/vn/tt;->vp:Z

    return-void

    :pswitch_5
    const/high16 p1, 0x42480000    # 50.0f

    .line 14
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/vn/tt;->az:F

    .line 15
    iget-object p2, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz p2, :cond_a

    .line 16
    check-cast p2, Lcom/byazt/vn/RoundImageView;

    invoke-virtual {p2, p1}, Lcom/byazt/vn/RoundImageView;->setEraseRadius(F)V

    :cond_a
    :goto_1
    return-void

    .line 17
    :pswitch_6
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/vn/tt;->mq:F

    return-void

    .line 18
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/byazt/vn/tt;->sl(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/vn/tt;->yo:Landroid/widget/ImageView$ScaleType;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ff1fdf3 -> :sswitch_8
        -0x6feea85c -> :sswitch_7
        -0x345fd79e -> :sswitch_6
        -0x30b32928 -> :sswitch_5
        -0x16313a4f -> :sswitch_4
        0x1bde4 -> :sswitch_3
        0x5c492a6 -> :sswitch_2
        0x4f219128 -> :sswitch_1
        0x63d9eb87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p0}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/c;

    iput-object v0, p0, Lcom/byazt/xj/ve;->sp:Lcom/byazt/xj/c;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/byazt/xj/ve;->sp:Lcom/byazt/xj/c;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/byazt/vn/tt;->c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->n()V

    .line 3
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    new-instance v1, Lcom/byazt/vn/tt$4;

    invoke-direct {v1, p0}, Lcom/byazt/vn/tt$4;-><init>(Lcom/byazt/vn/tt;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/vn/tt;->kz:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vn/tt;->c:Ljava/lang/String;

    return-void
.end method

.method public tt()V
    .locals 3

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 3
    invoke-direct {p0}, Lcom/byazt/vn/tt;->b()V

    .line 4
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget-object v1, p0, Lcom/byazt/vn/tt;->yo:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/xj/ve;->b:I

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setBorderColor(I)V

    .line 6
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/xj/ve;->hd:F

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setCornerRadius(F)V

    .line 7
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/xj/ve;->kp:F

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setBorderWidth(F)V

    .line 8
    iget v0, p0, Lcom/byazt/vn/tt;->vi:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v1, Lcom/byazt/vn/RoundImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/vn/tt;->ij:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/byazt/vn/RoundImageView;->setEraseEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/vn/tt;->az:F

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setEraseRadius(F)V

    return-void
.end method

.method public tt(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/byazt/vn/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public x()Lcom/byazt/vn/RoundImageView;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/vn/RoundImageView;

    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/vn/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/vn/RoundImageView;->c(Lcom/byazt/sa/uj;)V

    return-object v0
.end method
