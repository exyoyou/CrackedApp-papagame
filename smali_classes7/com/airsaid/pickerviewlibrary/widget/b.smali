.class public Lcom/airsaid/pickerviewlibrary/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Li/c;

.field private j:Li/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->h:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->t(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/airsaid/pickerviewlibrary/widget/b;)Li/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->j:Li/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method private i(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 6
    .line 7
    new-instance v2, Lh/a;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lh/a;-><init>(Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 31
    .line 32
    new-instance v2, Lh/a;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Lh/a;-><init>(Ljava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public g()[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    filled-new-array {v0, v1, v2}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(III)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->i(III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public l(ZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    if-eqz p3, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 1
    iput-boolean p4, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->h:Z

    .line 2
    .line 3
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x4

    .line 17
    :goto_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 22
    .line 23
    sget v2, Lcom/airsaid/pickerviewlibrary/R$id;->options1:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 32
    .line 33
    new-instance v2, Lh/a;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->e:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2, v3, v0}, Lh/a;-><init>(Ljava/util/ArrayList;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 50
    .line 51
    sget v2, Lcom/airsaid/pickerviewlibrary/R$id;->options2:I

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    new-instance v3, Lh/a;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v3, v2}, Lh/a;-><init>(Ljava/util/ArrayList;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v0, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 91
    .line 92
    sget v2, Lcom/airsaid/pickerviewlibrary/R$id;->options3:I

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    new-instance v3, Lh/a;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v3, v1}, Lh/a;-><init>(Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    .line 136
    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    :cond_4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    .line 145
    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_5
    new-instance p1, Lcom/airsaid/pickerviewlibrary/widget/b$a;

    .line 154
    .line 155
    invoke-direct {p1, p0}, Lcom/airsaid/pickerviewlibrary/widget/b$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->i:Li/c;

    .line 159
    .line 160
    new-instance p1, Lcom/airsaid/pickerviewlibrary/widget/b$b;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Lcom/airsaid/pickerviewlibrary/widget/b$b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->j:Li/c;

    .line 166
    .line 167
    if-eqz p2, :cond_6

    .line 168
    .line 169
    if-eqz p4, :cond_6

    .line 170
    .line 171
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 172
    .line 173
    iget-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->i:Li/c;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Li/c;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    if-eqz p3, :cond_7

    .line 179
    .line 180
    if-eqz p4, :cond_7

    .line 181
    .line 182
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 183
    .line 184
    iget-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->j:Li/c;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Li/c;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    return-void
.end method

.method public r(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public s(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public t(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method
