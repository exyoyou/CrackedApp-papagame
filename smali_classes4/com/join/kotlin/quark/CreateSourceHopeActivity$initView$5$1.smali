.class public final Lcom/join/kotlin/quark/CreateSourceHopeActivity$initView$5$1;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/quark/CreateSourceHopeActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/quark/CreateSourceHopeActivity$initView$5$1",
        "Lcom/join/mgps/base/decoration/UniversalItemDecoration;",
        "getItemOffsets",
        "Lcom/join/mgps/base/decoration/UniversalItemDecoration$Decoration;",
        "position",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_run:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/CreateSourceHopeActivity$initView$5$1;->$this_run:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 8
    .line 9
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->c:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/quark/CreateSourceHopeActivity$initView$5$1;->$this_run:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0713ac

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/kotlin/quark/CreateSourceHopeActivity$initView$5$1;->$this_run:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/kotlin/quark/CreateSourceHopeActivity$initView$5$1;->$this_run:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    float-to-int v0, v0

    .line 51
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 52
    .line 53
    return-object p1
.end method
