.class public Lcom/byazt/te/tt;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/te/CycleCountDownView;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public kz:Ljava/lang/String;

.field public vp:Ljava/lang/String;

.field public yo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/te/tt;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/te/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/te/tt;->sp()Lcom/byazt/te/CycleCountDownView;

    move-result-object v0

    return-object v0
.end method

.method public c(IIIZ)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 14
    check-cast v0, Lcom/byazt/te/CycleCountDownView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/te/CycleCountDownView;->c(III)V

    .line 15
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast p1, Lcom/byazt/te/CycleCountDownView;

    invoke-virtual {p1, p4}, Lcom/byazt/te/CycleCountDownView;->setCanSkip(Z)V

    .line 16
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast p1, Lcom/byazt/te/CycleCountDownView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setClickable(Z)V

    .line 17
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast p1, Lcom/byazt/te/CycleCountDownView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "boxFinishImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "boxImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    new-instance v1, Lcom/byazt/te/tt$2;

    invoke-direct {v1, p0}, Lcom/byazt/te/tt$2;-><init>(Lcom/byazt/te/tt;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    goto :goto_1

    .line 6
    :pswitch_1
    iput-object p2, p0, Lcom/byazt/te/tt;->yo:Ljava/lang/String;

    goto :goto_1

    .line 7
    :pswitch_2
    iput-object p2, p0, Lcom/byazt/te/tt;->vp:Ljava/lang/String;

    goto :goto_1

    .line 8
    :pswitch_3
    iput-object p2, p0, Lcom/byazt/te/tt;->kz:Ljava/lang/String;

    goto :goto_1

    .line 9
    :pswitch_4
    iput-object p2, p0, Lcom/byazt/te/tt;->c:Ljava/lang/String;

    goto :goto_1

    .line 10
    :pswitch_5
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast p1, Lcom/byazt/te/CycleCountDownView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/byazt/te/CycleCountDownView;->setBoxImage(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    new-instance v1, Lcom/byazt/te/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/te/tt$1;-><init>(Lcom/byazt/te/tt;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast p1, Lcom/byazt/te/CycleCountDownView;

    iget-object p2, p0, Lcom/byazt/te/tt;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/te/tt;->yo:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/te/tt;->vp:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/te/tt;->kz:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/byazt/te/CycleCountDownView;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7afbddb0 -> :sswitch_5
        -0x5305c081 -> :sswitch_4
        -0x4bf6736d -> :sswitch_3
        0x36452d -> :sswitch_2
        0x58705dc -> :sswitch_1
        0x2f843dbd -> :sswitch_0
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

.method public sp()Lcom/byazt/te/CycleCountDownView;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/te/CycleCountDownView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/te/CycleCountDownView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public tt()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    return-void
.end method
