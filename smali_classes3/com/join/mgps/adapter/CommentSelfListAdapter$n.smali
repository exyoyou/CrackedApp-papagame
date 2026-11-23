.class Lcom/join/mgps/adapter/CommentSelfListAdapter$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/LinearLayout;

.field h:Lcom/join/mgps/customview/VipView;

.field final synthetic i:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V
    .locals 0
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
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->i:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1773

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
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->a:Landroid/widget/ImageView;

    .line 16
    .line 17
    const p1, 0x7f0a1b00

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    const p1, 0x7f0a1b0c

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
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->c:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a175a

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
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a1764

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->g:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const p1, 0x7f0a1ba1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->d:Landroid/widget/ImageView;

    .line 71
    .line 72
    const p1, 0x7f0a1650

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/join/mgps/customview/VipView;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->h:Lcom/join/mgps/customview/VipView;

    .line 82
    .line 83
    const p1, 0x7f0a1514

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/ImageView;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->e:Landroid/widget/ImageView;

    .line 93
    .line 94
    return-void
.end method
