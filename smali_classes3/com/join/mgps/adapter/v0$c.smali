.class public Lcom/join/mgps/adapter/v0$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field final synthetic f:Lcom/join/mgps/adapter/v0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/v0;
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
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v0$c;->f:Lcom/join/mgps/adapter/v0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0dd8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/mgps/adapter/v0$c;->e:Landroid/view/View;

    .line 14
    .line 15
    const p1, 0x7f0a1375

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/join/mgps/adapter/v0$c;->d:Landroid/view/View;

    .line 23
    .line 24
    return-void
.end method
