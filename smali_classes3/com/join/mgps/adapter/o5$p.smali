.class Lcom/join/mgps/adapter/o5$p;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p"
.end annotation


# instance fields
.field private d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private e:Lcom/join/mgps/customview/SlidingTabLayout6;

.field private f:Lcom/join/mgps/customview/RecyclerviewViewpager;

.field private g:Landroid/widget/LinearLayout;

.field final synthetic h:Lcom/join/mgps/adapter/o5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/o5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemview"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$p;->h:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1415

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$p;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const p1, 0x7f0a165c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$p;->e:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 27
    .line 28
    const p1, 0x7f0a1b84

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$p;->f:Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 38
    .line 39
    const p1, 0x7f0a1098

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$p;->g:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/o5$p;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$p;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/RecyclerviewViewpager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$p;->f:Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/SlidingTabLayout6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$p;->e:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/o5$p;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$p;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method
