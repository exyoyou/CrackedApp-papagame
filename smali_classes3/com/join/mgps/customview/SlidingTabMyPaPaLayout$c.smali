.class Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->b:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;-><init>(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)V

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
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->b:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;->a(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)Lcom/join/mgps/customview/o0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->b:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;->a(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)Lcom/join/mgps/customview/o0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->b:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;->e(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
