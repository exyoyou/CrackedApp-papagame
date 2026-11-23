.class public Lcom/join/mgps/customview/input/InputNumView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/input/InputNumView$d;,
        Lcom/join/mgps/customview/input/InputNumView$e;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/GridView;

.field private e:Lcom/join/mgps/customview/input/InputView_Num;

.field private f:Lcom/join/mgps/customview/input/InputNumView$d;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/input/InputNumView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/input/InputNumView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/input/InputNumView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputNumView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/InputNumView;->f:Lcom/join/mgps/customview/input/InputNumView$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputView_Num;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/input/InputNumView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/InputNumView;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->c:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$a;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Landroid/widget/GridView;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$b;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputView_Num;

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$c;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$c;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/InputView_Num;->setOnFinishListener(Lcom/join/mgps/customview/input/InputView_Num$a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputView_Num;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/InputView_Num;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0d05e0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f0a1a48

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/customview/input/InputNumView;->g:Landroid/widget/TextView;

    .line 28
    .line 29
    const v1, 0x7f0a0a22

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/join/mgps/customview/input/InputNumView;->c:Landroid/view/View;

    .line 37
    .line 38
    const v1, 0x7f0a001e

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/GridView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Landroid/widget/GridView;

    .line 48
    .line 49
    const v0, 0x7f0a001d

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/join/mgps/customview/input/InputView_Num;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputView_Num;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Landroid/widget/GridView;

    .line 61
    .line 62
    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$e;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$e;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/join/mgps/customview/input/InputNumView;->f()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public setCurrentPwd(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pwd"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputView_Num;

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4, v1}, Lcom/join/mgps/customview/input/InputView_Num;->a(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public setListener(Lcom/join/mgps/customview/input/InputNumView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputNumListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView;->f:Lcom/join/mgps/customview/input/InputNumView$d;

    .line 2
    .line 3
    return-void
.end method

.method public setNumLengthAndIsPwd(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "isPwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputView_Num;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/input/InputView_Num;->setNumLengthAndIsPwd(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
