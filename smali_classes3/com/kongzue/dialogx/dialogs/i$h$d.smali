.class Lcom/kongzue/dialogx/dialogs/i$h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/i$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/kongzue/dialogx/dialogs/i;->S2(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/i;->n1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 22
    .line 23
    invoke-static {p1, p3}, Lcom/kongzue/dialogx/dialogs/i;->o1(Lcom/kongzue/dialogx/dialogs/i;I)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/i;->R1(Lcom/kongzue/dialogx/dialogs/i;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 39
    .line 40
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/List;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p1, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/i;->G2()Lcom/kongzue/dialogx/interfaces/x;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 59
    .line 60
    iget-object p4, p2, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-interface {p1, p4, p2, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 75
    .line 76
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 77
    .line 78
    iget-boolean p3, p2, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 79
    .line 80
    if-nez p3, :cond_1

    .line 81
    .line 82
    iget p3, p2, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 83
    .line 84
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/List;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-ne p3, p2, :cond_1

    .line 91
    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    :cond_1
    if-nez p1, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$d;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/i;->i2()V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method
