.class Lcom/join/mgps/adapter/x1$g3$b;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1$g3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/adapter/x1;

.field final synthetic f:Lcom/join/mgps/adapter/x1$g3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1$g3;Lcom/join/mgps/adapter/x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$g3$b;->f:Lcom/join/mgps/adapter/x1$g3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$g3$b;->e:Lcom/join/mgps/adapter/x1;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 8
    .line 9
    const v1, 0x7f071645

    .line 10
    .line 11
    .line 12
    const v2, 0x7f071374

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    rem-int/lit8 p1, p1, 0x2

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$g3$b;->f:Lcom/join/mgps/adapter/x1$g3;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    float-to-int p1, p1

    .line 39
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$g3$b;->f:Lcom/join/mgps/adapter/x1$g3;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    float-to-int p1, p1

    .line 58
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$g3$b;->f:Lcom/join/mgps/adapter/x1$g3;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    float-to-int p1, p1

    .line 78
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$g3$b;->f:Lcom/join/mgps/adapter/x1$g3;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    float-to-int p1, p1

    .line 97
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 98
    .line 99
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$g3$b;->f:Lcom/join/mgps/adapter/x1$g3;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    float-to-int p1, p1

    .line 116
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 117
    .line 118
    return-object v0
.end method
