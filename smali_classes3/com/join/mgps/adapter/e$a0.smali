.class public Lcom/join/mgps/adapter/e$a0;
.super Lcom/join/mgps/adapter/e$h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a0"
.end annotation


# instance fields
.field public e:[Landroid/view/View;

.field public f:[Lcom/facebook/drawee/view/SimpleDraweeView;

.field public g:[Landroid/widget/TextView;

.field public h:[Landroid/widget/TextView;

.field final synthetic i:Lcom/join/mgps/adapter/e;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V
    .locals 3
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
    iput-object p1, p0, Lcom/join/mgps/adapter/e$a0;->i:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e$h0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array v0, p1, [Landroid/view/View;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/e$a0;->e:[Landroid/view/View;

    .line 10
    .line 11
    new-array v0, p1, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/adapter/e$a0;->f:[Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    new-array v0, p1, [Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/adapter/e$a0;->g:[Landroid/widget/TextView;

    .line 18
    .line 19
    new-array p1, p1, [Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/adapter/e$a0;->h:[Landroid/widget/TextView;

    .line 22
    .line 23
    const p1, 0x7f0a097e

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x7f0a097f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f0a0980

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v1, p0, Lcom/join/mgps/adapter/e$a0;->e:[Landroid/view/View;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    aput-object p1, v1, v2

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    aput-object v0, v1, p1

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    aput-object p2, v1, p1

    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a0;->e:[Landroid/view/View;

    .line 56
    .line 57
    array-length p2, p1

    .line 58
    if-ge v2, p2, :cond_0

    .line 59
    .line 60
    iget-object p2, p0, Lcom/join/mgps/adapter/e$a0;->f:[Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    aget-object p1, p1, v2

    .line 63
    .line 64
    const v0, 0x7f0a044e

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    aput-object p1, p2, v2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a0;->g:[Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/join/mgps/adapter/e$a0;->e:[Landroid/view/View;

    .line 78
    .line 79
    aget-object p2, p2, v2

    .line 80
    .line 81
    const v0, 0x7f0a10d8

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    aput-object p2, p1, v2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a0;->h:[Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/join/mgps/adapter/e$a0;->e:[Landroid/view/View;

    .line 95
    .line 96
    aget-object p2, p2, v2

    .line 97
    .line 98
    const v0, 0x7f0a048c

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/widget/TextView;

    .line 106
    .line 107
    aput-object p2, p1, v2

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
