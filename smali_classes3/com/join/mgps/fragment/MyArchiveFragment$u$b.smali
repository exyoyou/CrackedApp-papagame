.class public Lcom/join/mgps/fragment/MyArchiveFragment$u$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/MyArchiveFragment$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Lcom/join/mgps/customview/ClouldItemView;

.field g:Landroid/widget/RelativeLayout;

.field final synthetic h:Lcom/join/mgps/fragment/MyArchiveFragment$u;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment$u;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->h:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0a67

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 16
    .line 17
    const p1, 0x7f0a0a7a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 27
    .line 28
    const p1, 0x7f0a0440

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/mgps/customview/ClouldItemView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->f:Lcom/join/mgps/customview/ClouldItemView;

    .line 38
    .line 39
    const p1, 0x7f0a13e1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    return-void
.end method
