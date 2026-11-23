.class Lcom/join/mgps/fragment/l3$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/l3$f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/fragment/l3$f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l3$f;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$data1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l3$f$a;->d:Lcom/join/mgps/fragment/l3$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/l3$f$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/fragment/l3$f$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$f$a;->d:Lcom/join/mgps/fragment/l3$f;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 8
    .line 9
    const v1, 0x7f1301b0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0d0186

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a04b8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/Button;

    .line 29
    .line 30
    const v1, 0x7f0a1762

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .line 39
    const v2, 0x7f0a04bb

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v3, "\u5220\u9664\u6e38\u620f\u5355"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u5355\uff1f"

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "\u5220\u9664"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0a04b2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/Button;

    .line 71
    .line 72
    new-instance v2, Lcom/join/mgps/fragment/l3$f$a$a;

    .line 73
    .line 74
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/fragment/l3$f$a$a;-><init>(Lcom/join/mgps/fragment/l3$f$a;Landroid/app/Dialog;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/fragment/l3$f$a$b;

    .line 81
    .line 82
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/l3$f$a$b;-><init>(Lcom/join/mgps/fragment/l3$f$a;Landroid/app/Dialog;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    return p1
.end method
