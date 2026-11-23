.class public Lcom/beizi/ad/internal/view/a/a$e$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/internal/view/a/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/internal/view/a/a$e;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/beizi/ad/internal/view/a/a$e;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/view/a/a$e$a;->a:Lcom/beizi/ad/internal/view/a/a$e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/beizi/fusion/R$id;->dislike_item_multi_one_title:I

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/beizi/ad/internal/view/a/a$e$a;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    sget p1, Lcom/beizi/fusion/R$id;->complaint_reason_item_divider:I

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/beizi/ad/internal/view/a/a$e$a;->c:Landroid/view/View;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/view/a/a$e$a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/view/a/a$e$a;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/beizi/ad/internal/view/a/a$e$a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/view/a/a$e$a;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method
