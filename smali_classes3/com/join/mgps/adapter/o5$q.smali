.class public Lcom/join/mgps/adapter/o5$q;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic e:Lcom/join/mgps/adapter/o5;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$q;->e:Lcom/join/mgps/adapter/o5;

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
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    return-void
.end method
