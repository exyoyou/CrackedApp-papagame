.class public Lcom/byazt/wy/c;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x604,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/wy/UGProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public kz:I

.field public mq:F

.field public vi:F

.field public vp:Ljava/lang/String;

.field public yo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/wy/c;->sp()Lcom/byazt/wy/UGProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "progressColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "textSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "progressBgColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-static {p2}, Lcom/byazt/cd/c;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/wy/c;->c:I

    return-void

    .line 5
    :pswitch_1
    iput-object p2, p0, Lcom/byazt/wy/c;->vp:Ljava/lang/String;

    return-void

    :pswitch_2
    const/4 p1, 0x0

    .line 6
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/wy/c;->mq:F

    :goto_1
    return-void

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/byazt/wy/c;->vi:F

    return-void

    .line 8
    :pswitch_4
    invoke-static {p2}, Lcom/byazt/cd/c;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/wy/c;->kz:I

    return-void

    .line 9
    :pswitch_5
    invoke-static {p2}, Lcom/byazt/cd/c;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/wy/c;->yo:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d3b70cf -> :sswitch_5
        -0x3f64d1ca -> :sswitch_4
        -0x3bd2c532 -> :sswitch_3
        -0x3bab3dd3 -> :sswitch_2
        0x36452d -> :sswitch_1
        0x2d02d136 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sp()Lcom/byazt/wy/UGProgressBar;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/wy/UGProgressBar;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/wy/UGProgressBar;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/wy/UGProgressBar;->c(Lcom/byazt/sa/uj;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/byazt/wy/UGProgressBar;

    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/wy/c;->yo:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Lcom/byazt/wy/UGProgressBar;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/wy/c;->vp:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/wy/UGProgressBar;->setText(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Lcom/byazt/wy/UGProgressBar;

    .line 25
    .line 26
    iget v1, p0, Lcom/byazt/wy/c;->yo:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/wy/UGProgressBar;->setProgressBgColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 32
    .line 33
    check-cast v0, Lcom/byazt/wy/UGProgressBar;

    .line 34
    .line 35
    iget v1, p0, Lcom/byazt/wy/c;->c:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/wy/UGProgressBar;->setProgressColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 41
    .line 42
    check-cast v0, Lcom/byazt/wy/UGProgressBar;

    .line 43
    .line 44
    iget v1, p0, Lcom/byazt/wy/c;->kz:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/wy/UGProgressBar;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
