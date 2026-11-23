.class Lcom/join/mgps/adapter/o5$n;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/join/mgps/customview/HorizontalRecyclerView;

.field final synthetic f:Lcom/join/mgps/adapter/o5;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$n;->f:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1345

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$n;->e:Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 16
    .line 17
    const p1, 0x7f0a064e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$n;->d:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$n;->e:Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 2
    .line 3
    return-object p0
.end method
