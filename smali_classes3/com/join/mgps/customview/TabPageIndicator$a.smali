.class Lcom/join/mgps/customview/TabPageIndicator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/TabPageIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->b:Lcom/join/mgps/customview/TabPageIndicator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/customview/TabPageIndicator$e;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->b:Lcom/join/mgps/customview/TabPageIndicator;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->a(Lcom/join/mgps/customview/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/customview/TabPageIndicator$e;->b()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->b:Lcom/join/mgps/customview/TabPageIndicator;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/customview/TabPageIndicator;->a(Lcom/join/mgps/customview/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 24
    .line 25
    .line 26
    if-ne v0, p1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->b:Lcom/join/mgps/customview/TabPageIndicator;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->b(Lcom/join/mgps/customview/TabPageIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->b:Lcom/join/mgps/customview/TabPageIndicator;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->b(Lcom/join/mgps/customview/TabPageIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/TabPageIndicator$d;->a(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
