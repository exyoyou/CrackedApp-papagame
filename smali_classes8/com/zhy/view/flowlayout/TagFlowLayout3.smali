.class public Lcom/zhy/view/flowlayout/TagFlowLayout3;
.super Lcom/join/mgps/customview/WrapContentGridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowLayout3$a;,
        Lcom/zhy/view/flowlayout/TagFlowLayout3$b;
    }
.end annotation


# instance fields
.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

.field e:Lcom/zhy/view/flowlayout/TagFlowLayout3$b;


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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/WrapContentGridView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    invoke-direct {v0, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3;)V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    .line 5
    invoke-direct {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->a(Landroid/content/Context;)V

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

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/WrapContentGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

    .line 9
    new-instance p2, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    invoke-direct {p2, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3;)V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    .line 10
    invoke-direct {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->a(Landroid/content/Context;)V

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/WrapContentGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

    .line 14
    new-instance p2, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    invoke-direct {p2, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3;)V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    .line 15
    invoke-direct {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
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
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getListener()Lcom/zhy/view/flowlayout/TagFlowLayout3$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->e:Lcom/zhy/view/flowlayout/TagFlowLayout3$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setListener(Lcom/zhy/view/flowlayout/TagFlowLayout3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->e:Lcom/zhy/view/flowlayout/TagFlowLayout3$b;

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
