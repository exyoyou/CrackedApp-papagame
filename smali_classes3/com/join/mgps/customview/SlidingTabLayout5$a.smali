.class Lcom/join/mgps/customview/SlidingTabLayout5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout5;->c(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabLayout5;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout5;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->c:Lcom/join/mgps/customview/SlidingTabLayout5;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->c:Lcom/join/mgps/customview/SlidingTabLayout5;

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->b:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->c:Lcom/join/mgps/customview/SlidingTabLayout5;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->b:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
