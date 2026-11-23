.class Lcom/join/mgps/adapter/d2$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/d2$x1;

.field final synthetic c:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$holderGUpdateinfo1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$q;->c:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->f:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "\u6536\u8d77"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->f:Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v0, "\u5c55\u5f00"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->c:Lcom/join/mgps/adapter/d2;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    if-ne p1, v1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->d:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->c:Lcom/join/mgps/adapter/d2;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->e:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->f:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->c:Lcom/join/mgps/adapter/d2;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 v0, 0x0

    .line 90
    if-ne p1, v1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->d:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->c:Lcom/join/mgps/adapter/d2;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$q;->b:Lcom/join/mgps/adapter/d2$x1;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$x1;->e:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    return-void
.end method
