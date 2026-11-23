.class public final Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/quark/QuarkSearchResultActivity;->initView(Landroid/os/Bundle;)V
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
        "com/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1",
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
.field final synthetic $this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 8
    .line 9
    const v1, 0x7f071293

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const v2, 0x7f071374

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-int p1, p1

    .line 28
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->c:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->c:I

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    float-to-int p1, p1

    .line 55
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const v1, 0x7f07133d

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    float-to-int p1, p1

    .line 71
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    float-to-int p1, p1

    .line 84
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 85
    .line 86
    return-object v0
.end method
