.class public Lcom/byazt/nk/n;
.super Lcom/byazt/nk/nu;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xea,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/nk/nu<",
        "Lcom/byazt/oq/ClickSlideUpView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/nk/nu;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lcom/byazt/nk/n;->c(Lcom/byazt/aq/sp;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private c(Lcom/byazt/aq/sp;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/byazt/oq/ClickSlideUpView2;

    iget-object v0, p0, Lcom/byazt/nk/nu;->tt:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/byazt/oq/ClickSlideUpView2;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/byazt/nk/nu;->c:Lcom/byazt/oq/SlideUpView;

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    .line 3
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v0, p0, Lcom/byazt/nk/nu;->c:Lcom/byazt/oq/SlideUpView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/nk/nu;->c:Lcom/byazt/oq/SlideUpView;

    instance-of v0, p1, Lcom/byazt/oq/ClickSlideUpView2;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/byazt/oq/ClickSlideUpView2;

    iget-object v0, p0, Lcom/byazt/nk/nu;->uj:Lcom/byazt/aq/sp;

    invoke-virtual {v0}, Lcom/byazt/aq/sp;->lt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/oq/ClickSlideUpView2;->setButtonText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/nk/nu;->c:Lcom/byazt/oq/SlideUpView;

    invoke-virtual {v0}, Lcom/byazt/oq/SlideUpView;->c()V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nk/nu;->c:Lcom/byazt/oq/SlideUpView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/oq/SlideUpView;->tt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method
