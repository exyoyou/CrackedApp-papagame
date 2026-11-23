.class Lcom/join/mgps/adapter/x1$z2;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "z2"
.end annotation


# instance fields
.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:[Landroid/widget/TextView;

.field final synthetic i:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z2;->i:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    .line 8
    .line 9
    const p1, 0x7f0a0aaa

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z2;->d:Landroid/widget/TextView;

    .line 19
    .line 20
    const p1, 0x7f0a0aab

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z2;->e:Landroid/widget/TextView;

    .line 30
    .line 31
    const p1, 0x7f0a0aac

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z2;->f:Landroid/widget/TextView;

    .line 41
    .line 42
    const p1, 0x7f0a0aad

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z2;->g:Landroid/widget/TextView;

    .line 52
    .line 53
    const/4 p2, 0x4

    .line 54
    new-array p2, p2, [Landroid/widget/TextView;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$z2;->d:Landroid/widget/TextView;

    .line 58
    .line 59
    aput-object v1, p2, v0

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$z2;->e:Landroid/widget/TextView;

    .line 63
    .line 64
    aput-object v1, p2, v0

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$z2;->f:Landroid/widget/TextView;

    .line 68
    .line 69
    aput-object v1, p2, v0

    .line 70
    .line 71
    const/4 v0, 0x3

    .line 72
    aput-object p1, p2, v0

    .line 73
    .line 74
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    .line 75
    .line 76
    return-void
.end method
