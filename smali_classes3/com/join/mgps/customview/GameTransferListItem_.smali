.class public final Lcom/join/mgps/customview/GameTransferListItem_;
.super Lcom/join/mgps/customview/GameTransferListItem;
.source "SourceFile"

# interfaces
.implements Lzc/a;
.implements Lzc/b;


# instance fields
.field private n:Z

.field private final o:Lzc/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GameTransferListItem;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/GameTransferListItem_;->n:Z

    .line 6
    .line 7
    new-instance p1, Lzc/c;

    .line 8
    .line 9
    invoke-direct {p1}, Lzc/c;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem_;->o:Lzc/c;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/GameTransferListItem_;->e()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/join/mgps/customview/GameTransferListItem;
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
    new-instance v0, Lcom/join/mgps/customview/GameTransferListItem_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/GameTransferListItem_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/GameTransferListItem_;->onFinishInflate()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->o:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->n:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0d0308

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->o:Lzc/c;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lzc/c;->a(Lzc/a;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a073e

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->b:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a073f

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0744

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0743

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/CheckBox;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/CheckBox;

    .line 44
    .line 45
    const v0, 0x7f0a034b

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    const v0, 0x7f0a073d

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 66
    .line 67
    return-void
.end method
