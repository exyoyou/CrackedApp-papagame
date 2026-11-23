.class public Lcom/byazt/sm/tt;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/sm/UGTextView;",
        ">;"
    }
.end annotation


# instance fields
.field public az:I

.field public c:Ljava/lang/String;

.field public cf:I

.field public di:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ej:I

.field public hg:F

.field public ij:I

.field public is:Landroid/text/TextUtils$TruncateAt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public iy:F

.field public jg:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public jt:Landroid/text/TextUtils$TruncateAt;

.field public k:F

.field public kz:F

.field public mq:I

.field public nl:F

.field public pl:Z

.field public sd:F

.field public vi:I

.field public vp:F

.field public w:F

.field public yo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, -0x1000000

    .line 5
    .line 6
    iput p1, p0, Lcom/byazt/sm/tt;->yo:I

    .line 7
    .line 8
    const/high16 p1, 0x41400000    # 12.0f

    .line 9
    .line 10
    iput p1, p0, Lcom/byazt/sm/tt;->vp:F

    .line 11
    .line 12
    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput p1, p0, Lcom/byazt/sm/tt;->kz:F

    .line 15
    .line 16
    const v0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/sm/tt;->mq:I

    .line 20
    .line 21
    const v0, 0x800003

    .line 22
    .line 23
    .line 24
    iput v0, p0, Lcom/byazt/sm/tt;->ij:I

    .line 25
    .line 26
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/sm/tt;->jt:Landroid/text/TextUtils$TruncateAt;

    .line 29
    .line 30
    iput p1, p0, Lcom/byazt/sm/tt;->w:F

    .line 31
    .line 32
    const/high16 p1, 0x43c80000    # 400.0f

    .line 33
    .line 34
    iput p1, p0, Lcom/byazt/sm/tt;->nl:F

    .line 35
    .line 36
    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/byazt/sm/tt;->w:F

    .line 2
    .line 3
    const/high16 v1, 0x40400000    # 3.0f

    .line 4
    .line 5
    cmpg-float v1, v0, v1

    .line 6
    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 10
    .line 11
    check-cast v1, Lcom/byazt/sm/UGTextView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/byazt/sm/UGTextView;->setLineSpacing(FF)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x1c

    .line 21
    .line 22
    if-lt v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 25
    .line 26
    iget v2, p0, Lcom/byazt/sm/tt;->vp:F

    .line 27
    .line 28
    const v3, 0x3f99999a    # 1.2f

    .line 29
    .line 30
    .line 31
    mul-float v2, v2, v3

    .line 32
    .line 33
    sub-float/2addr v0, v2

    .line 34
    const/high16 v2, 0x40000000    # 2.0f

    .line 35
    .line 36
    div-float/2addr v0, v2

    .line 37
    invoke-static {v1, v0}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 46
    .line 47
    check-cast v1, Lcom/byazt/sm/UGTextView;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget-object v2, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 55
    .line 56
    check-cast v2, Lcom/byazt/sm/UGTextView;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/2addr v2, v0

    .line 63
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 64
    .line 65
    move-object v3, v0

    .line 66
    check-cast v3, Lcom/byazt/sm/UGTextView;

    .line 67
    .line 68
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 75
    .line 76
    check-cast v4, Lcom/byazt/sm/UGTextView;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 86
    .line 87
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 90
    .line 91
    iget v2, p0, Lcom/byazt/sm/tt;->w:F

    .line 92
    .line 93
    invoke-static {v1, v2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v0, v1}, Lw1/d;->a(Lcom/byazt/sm/UGTextView;I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void
.end method

.method private m(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v0, "none"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v0, "strikethrough"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v0, "underline"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_0
    const p1, 0x7fffffff

    .line 46
    .line 47
    .line 48
    packed-switch v1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_0
    const/16 p1, 0x10

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    const/16 p1, 0x8

    .line 56
    .line 57
    :goto_1
    :pswitch_2
    return p1

    .line 58
    nop

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x3d363934 -> :sswitch_2
        -0x39f7812d -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sl(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v0, "start"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v0, "end"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v0, "center"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    .line 65
    .line 66
    :goto_1
    iget-object p1, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    .line 67
    .line 68
    return-object p1

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 12
    .line 13
    return-object p1
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lcom/byazt/sm/tt;->w:F

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/sm/UGTextView;->setLineSpacing(FF)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private yp(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x4642c5d0

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const v1, -0x3df94319

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const v1, 0x2e3a85

    .line 19
    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "bold"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v0, "normal"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string v0, "italic"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    const/4 p1, -0x1

    .line 55
    :goto_1
    if-eqz p1, :cond_5

    .line 56
    .line 57
    if-eq p1, v4, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/4 v2, 0x2

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    const/4 v2, 0x1

    .line 63
    :goto_2
    return v2
.end method

.method private z(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, -0x1

    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v0, "center_horizontal"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x4

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v0, "right"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x3

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string v0, "left"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v3, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v0, "center_vertical"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v0, "center"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v3, 0x0

    .line 69
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    :pswitch_0
    const/4 v1, 0x3

    .line 73
    goto :goto_1

    .line 74
    :pswitch_1
    const/4 v1, 0x5

    .line 75
    goto :goto_1

    .line 76
    :pswitch_2
    const/16 v1, 0x10

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_3
    const/16 v1, 0x11

    .line 80
    .line 81
    :goto_1
    :pswitch_4
    return v1

    .line 82
    nop

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        -0x14c923e0 -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x3f657e4e -> :sswitch_0
    .end sparse-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/byazt/sm/tt;->az:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/sm/tt;->sp()Lcom/byazt/sm/UGTextView;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/sm/UGTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "letterSpacing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ellipsize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "maxLines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "minTextSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ellipsis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "lineHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "fontWeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "shadowDy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "shadowDx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "textDecoration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "textSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "shadowBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_e
    const-string v0, "textStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_f
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "shadowOffsetY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "shadowOffsetX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_13
    const-string v0, "shadowColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_14
    const-string v0, "shadowRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x0

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->iy:F

    return-void

    .line 7
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/byazt/sm/tt;->sl(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    return-void

    :pswitch_2
    const p1, 0x7fffffff

    .line 8
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_16

    move p1, p2

    .line 9
    :cond_16
    iput p1, p0, Lcom/byazt/sm/tt;->mq:I

    return-void

    .line 10
    :pswitch_3
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->kz:F

    goto :goto_1

    .line 11
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/byazt/sm/tt;->u(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sm/tt;->jt:Landroid/text/TextUtils$TruncateAt;

    return-void

    .line 12
    :pswitch_5
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->cf:I

    return-void

    .line 13
    :pswitch_6
    iput-object p2, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    return-void

    .line 14
    :pswitch_7
    invoke-static {p2, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->w:F

    return-void

    .line 15
    :pswitch_8
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->nl:F

    cmpg-float p2, p1, v0

    if-ltz p2, :cond_18

    const/high16 p2, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_17

    goto :goto_2

    :cond_17
    :goto_1
    return-void

    :cond_18
    :goto_2
    const/high16 p1, 0x43c80000    # 400.0f

    .line 16
    iput p1, p0, Lcom/byazt/sm/tt;->nl:F

    return-void

    .line 17
    :pswitch_9
    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->jg:F

    return-void

    .line 18
    :pswitch_a
    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->di:F

    return-void

    .line 19
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/byazt/sm/tt;->m(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->az:I

    return-void

    .line 20
    :pswitch_c
    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->vp:F

    return-void

    .line 21
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/byazt/sm/tt;->yp(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->vi:I

    return-void

    .line 22
    :pswitch_e
    invoke-static {p2}, Lcom/byazt/cd/c;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->yo:I

    return-void

    .line 23
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/byazt/sm/tt;->z(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->ij:I

    return-void

    .line 24
    :pswitch_10
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->sd:F

    return-void

    .line 25
    :pswitch_11
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->hg:F

    return-void

    .line 26
    :pswitch_12
    invoke-static {p2}, Lcom/byazt/cd/c;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->ej:I

    .line 27
    iput-boolean v1, p0, Lcom/byazt/sm/tt;->pl:Z

    return-void

    .line 28
    :pswitch_13
    invoke-static {p2, v4}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/tt;->k:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x609f862e -> :sswitch_14
        -0x5ec185dd -> :sswitch_13
        -0x495b371b -> :sswitch_12
        -0x495b371a -> :sswitch_11
        -0x3f826a28 -> :sswitch_10
        -0x3f64d1ca -> :sswitch_f
        -0x3e80e37c -> :sswitch_e
        -0x3cdd7259 -> :sswitch_d
        -0x3bd2c532 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2d15462c -> :sswitch_a
        -0x2d15462b -> :sswitch_9
        -0x2bc67c59 -> :sswitch_8
        -0x1ebe99c5 -> :sswitch_7
        0x36452d -> :sswitch_6
        0x6234eff -> :sswitch_5
        0xb3f60d1 -> :sswitch_4
        0x14eed340 -> :sswitch_3
        0x174277fb -> :sswitch_2
        0x5cacba8d -> :sswitch_1
        0x7dd4813d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_13
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public sp()Lcom/byazt/sm/UGTextView;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/sm/UGTextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/sm/UGTextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/sm/UGTextView;->c(Lcom/byazt/sa/uj;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    const-string v0, "null"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 23
    .line 24
    check-cast p1, Lcom/byazt/sm/UGTextView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public tt()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 2
    .line 3
    .line 4
    const-string v0, "null"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/sm/tt;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/byazt/sm/tt;->t(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 26
    .line 27
    iget v1, p0, Lcom/byazt/sm/tt;->vp:F

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/byazt/sm/UGTextView;->setTextSize(IF)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 34
    .line 35
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 36
    .line 37
    iget v1, p0, Lcom/byazt/sm/tt;->yo:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 43
    .line 44
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 45
    .line 46
    iget v1, p0, Lcom/byazt/sm/tt;->cf:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 52
    .line 53
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 54
    .line 55
    iget v1, p0, Lcom/byazt/sm/tt;->mq:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 61
    .line 62
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 63
    .line 64
    iget v1, p0, Lcom/byazt/sm/tt;->ij:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 70
    .line 71
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 78
    .line 79
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 82
    .line 83
    iget v4, p0, Lcom/byazt/sm/tt;->kz:F

    .line 84
    .line 85
    invoke-static {v3, v4}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v0, v3}, Lcom/byazt/sm/UGTextView;->setMinTextSize(F)V

    .line 90
    .line 91
    .line 92
    iget v0, p0, Lcom/byazt/sm/tt;->az:I

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/byazt/sm/tt;->a(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->h()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/sm/tt;->jt:Landroid/text/TextUtils$TruncateAt;

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/byazt/sm/tt;->c(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/byazt/sm/tt;->is:Landroid/text/TextUtils$TruncateAt;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/byazt/sm/tt;->c(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    iget v0, p0, Lcom/byazt/sm/tt;->w:F

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    cmpl-float v0, v0, v3

    .line 118
    .line 119
    if-lez v0, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->h()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/byazt/sm/tt;->b()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/byazt/sm/tt;->x()V

    .line 132
    .line 133
    .line 134
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 v4, 0x17

    .line 137
    .line 138
    if-lt v0, v4, :cond_4

    .line 139
    .line 140
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 141
    .line 142
    check-cast v4, Lcom/byazt/sm/UGTextView;

    .line 143
    .line 144
    invoke-static {v4, v1}, Lw1/b;->a(Lcom/byazt/sm/UGTextView;I)V

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->h()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_6

    .line 152
    .line 153
    iget-boolean v4, p0, Lcom/byazt/sm/tt;->pl:Z

    .line 154
    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    iget v4, p0, Lcom/byazt/sm/tt;->k:F

    .line 158
    .line 159
    cmpg-float v4, v4, v3

    .line 160
    .line 161
    if-gtz v4, :cond_5

    .line 162
    .line 163
    const v4, 0x3727c5ac    # 1.0E-5f

    .line 164
    .line 165
    .line 166
    iput v4, p0, Lcom/byazt/sm/tt;->k:F

    .line 167
    .line 168
    :cond_5
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 169
    .line 170
    check-cast v4, Lcom/byazt/sm/UGTextView;

    .line 171
    .line 172
    iget v5, p0, Lcom/byazt/sm/tt;->k:F

    .line 173
    .line 174
    iget v6, p0, Lcom/byazt/sm/tt;->hg:F

    .line 175
    .line 176
    iget v7, p0, Lcom/byazt/sm/tt;->sd:F

    .line 177
    .line 178
    iget v8, p0, Lcom/byazt/sm/tt;->ej:I

    .line 179
    .line 180
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 185
    .line 186
    check-cast v4, Lcom/byazt/sm/UGTextView;

    .line 187
    .line 188
    iget v5, p0, Lcom/byazt/sm/tt;->k:F

    .line 189
    .line 190
    iget v6, p0, Lcom/byazt/sm/tt;->di:F

    .line 191
    .line 192
    iget v7, p0, Lcom/byazt/sm/tt;->jg:F

    .line 193
    .line 194
    iget v8, p0, Lcom/byazt/sm/tt;->ej:I

    .line 195
    .line 196
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 197
    .line 198
    .line 199
    :cond_7
    :goto_2
    iget v4, p0, Lcom/byazt/sm/tt;->vi:I

    .line 200
    .line 201
    if-ne v4, v2, :cond_8

    .line 202
    .line 203
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 204
    .line 205
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 206
    .line 207
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 208
    .line 209
    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_8
    const/16 v5, 0x1c

    .line 214
    .line 215
    if-lt v0, v5, :cond_a

    .line 216
    .line 217
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 218
    .line 219
    iget v5, p0, Lcom/byazt/sm/tt;->nl:F

    .line 220
    .line 221
    float-to-int v5, v5

    .line 222
    const/4 v6, 0x2

    .line 223
    if-ne v4, v6, :cond_9

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_9
    const/4 v2, 0x0

    .line 227
    :goto_3
    invoke-static {v0, v5, v2}, Lw1/c;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 232
    .line 233
    check-cast v1, Lcom/byazt/sm/UGTextView;

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_a
    iget v0, p0, Lcom/byazt/sm/tt;->nl:F

    .line 240
    .line 241
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 242
    .line 243
    cmpl-float v0, v0, v1

    .line 244
    .line 245
    if-ltz v0, :cond_b

    .line 246
    .line 247
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 248
    .line 249
    check-cast v0, Lcom/byazt/sm/UGTextView;

    .line 250
    .line 251
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 254
    .line 255
    .line 256
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 257
    .line 258
    iget v1, p0, Lcom/byazt/sm/tt;->vp:F

    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    cmpl-float v0, v0, v3

    .line 265
    .line 266
    if-lez v0, :cond_c

    .line 267
    .line 268
    iget v0, p0, Lcom/byazt/sm/tt;->iy:F

    .line 269
    .line 270
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 271
    .line 272
    iget v2, p0, Lcom/byazt/sm/tt;->vp:F

    .line 273
    .line 274
    invoke-static {v1, v2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    div-float/2addr v0, v1

    .line 279
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 280
    .line 281
    check-cast v1, Lcom/byazt/sm/UGTextView;

    .line 282
    .line 283
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 284
    .line 285
    .line 286
    :cond_c
    return-void
.end method
