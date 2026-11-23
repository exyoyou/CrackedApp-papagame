.class Lcom/join/mgps/adapter/j7$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Landroid/widget/LinearLayout;

.field final synthetic n:Lcom/join/mgps/adapter/j7;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/j7;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/j7;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->n:Lcom/join/mgps/adapter/j7;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a08cf

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a0441

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a10d8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a048c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->g:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a1066

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->i:Landroid/view/View;

    .line 58
    .line 59
    const p1, 0x7f0a10a3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->j:Landroid/view/View;

    .line 67
    .line 68
    const p1, 0x7f0a04e1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->k:Landroid/view/View;

    .line 76
    .line 77
    const p1, 0x7f0a1341

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->l:Landroid/view/View;

    .line 85
    .line 86
    const p1, 0x7f0a147e

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->h:Landroid/widget/TextView;

    .line 96
    .line 97
    const p1, 0x7f0a1675

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/join/mgps/adapter/j7$a;->m:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    return-void
.end method
