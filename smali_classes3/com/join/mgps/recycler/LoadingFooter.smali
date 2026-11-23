.class public Lcom/join/mgps/recycler/LoadingFooter;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/recycler/LoadingFooter$State;
    }
.end annotation


# instance fields
.field protected b:Lcom/join/mgps/recycler/LoadingFooter$State;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/join/mgps/recycler/LoadingFooter$State;->Normal:Lcom/join/mgps/recycler/LoadingFooter$State;

    iput-object v0, p0, Lcom/join/mgps/recycler/LoadingFooter;->b:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/LoadingFooter;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object p2, Lcom/join/mgps/recycler/LoadingFooter$State;->Normal:Lcom/join/mgps/recycler/LoadingFooter$State;

    iput-object p2, p0, Lcom/join/mgps/recycler/LoadingFooter;->b:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/LoadingFooter;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget-object p2, Lcom/join/mgps/recycler/LoadingFooter$State;->Normal:Lcom/join/mgps/recycler/LoadingFooter$State;

    iput-object p2, p0, Lcom/join/mgps/recycler/LoadingFooter;->b:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/LoadingFooter;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d080e

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/join/mgps/recycler/LoadingFooter$State;->Normal:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getState()Lcom/join/mgps/recycler/LoadingFooter$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/LoadingFooter;->b:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 2
    .line 3
    return-object v0
.end method

.method public setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;Z)V

    return-void
.end method

.method public setState(Lcom/join/mgps/recycler/LoadingFooter$State;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "showView"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/recycler/LoadingFooter;->b:Lcom/join/mgps/recycler/LoadingFooter$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->b:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 4
    sget-object v0, Lcom/join/mgps/recycler/LoadingFooter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->c:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->e:Landroid/view/View;

    if-nez p1, :cond_4

    const p1, 0x7f0a058b

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->e:Landroid/view/View;

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->e:Landroid/view/View;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->e:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->d:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->c:Landroid/view/View;

    if-nez p1, :cond_9

    const p1, 0x7f0a0f71

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->c:Landroid/view/View;

    const v0, 0x7f0a0f6c

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->f:Landroid/widget/ProgressBar;

    goto :goto_2

    .line 24
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->c:Landroid/view/View;

    if-eqz p2, :cond_a

    const/4 v3, 0x0

    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 27
    :cond_b
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->c:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->e:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 31
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->d:Landroid/view/View;

    if-nez p1, :cond_e

    const p1, 0x7f0a114e

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/recycler/LoadingFooter;->d:Landroid/view/View;

    goto :goto_3

    .line 35
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
