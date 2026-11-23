.class Lcom/join/mgps/customview/SlidingTabLayout1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout1;->c(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabLayout1;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout1;I)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:I

    .line 14
    .line 15
    iput v0, p1, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->a(Lcom/join/mgps/customview/SlidingTabLayout1;)Lcom/join/mgps/customview/SlidingTabLayout1$d;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 22
    .line 23
    iget v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1$d;->a(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
