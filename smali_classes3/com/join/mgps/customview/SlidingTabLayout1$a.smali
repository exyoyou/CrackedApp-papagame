.class Lcom/join/mgps/customview/SlidingTabLayout1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout1;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayout1;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout1;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 21
    .line 22
    iget v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
