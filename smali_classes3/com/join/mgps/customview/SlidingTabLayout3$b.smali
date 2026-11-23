.class Lcom/join/mgps/customview/SlidingTabLayout3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout3;->b(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabLayout3;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout3;I)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3$b;->c:Lcom/join/mgps/customview/SlidingTabLayout3;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3$b;->b:I

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3$b;->c:Lcom/join/mgps/customview/SlidingTabLayout3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/SlidingTabLayout3;->g:Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3$b;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
