.class public Lcom/join/mgps/customview/input/InputView_Num;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/input/InputView_Num$a;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/join/mgps/customview/input/InputView_Num$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


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

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    return-void
.end method

.method private d(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f0802df

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f0802e0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private getNums()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "num",
            "notify"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 6
    .line 7
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    .line 22
    .line 23
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/input/InputView_Num;->d(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 35
    .line 36
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Lcom/join/mgps/customview/input/InputView_Num$a;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/join/mgps/customview/input/InputView_Num;->getNums()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p1, p2}, Lcom/join/mgps/customview/input/InputView_Num$a;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 22
    .line 23
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    .line 27
    .line 28
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/customview/input/InputView_Num;->d(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 44
    .line 45
    if-gez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Lcom/join/mgps/customview/input/InputView_Num$a;

    .line 48
    .line 49
    invoke-interface {v0, v3}, Lcom/join/mgps/customview/input/InputView_Num$a;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 60
    .line 61
    if-gez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Lcom/join/mgps/customview/input/InputView_Num$a;

    .line 64
    .line 65
    invoke-interface {v0, v3}, Lcom/join/mgps/customview/input/InputView_Num$a;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput v2, p0, Lcom/join/mgps/customview/input/InputView_Num;->f:I

    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public setNumLengthAndIsPwd(IZ)V
    .locals 4
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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x41100000    # 9.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 25
    .line 26
    if-ge p1, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f0d0608

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x7f0a05a6

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/EditText;

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v3, -0x2

    .line 70
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    iget v3, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:I

    .line 74
    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 76
    .line 77
    if-eq p1, v3, :cond_1

    .line 78
    .line 79
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 p1, p1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-void
.end method

.method public setOnFinishListener(Lcom/join/mgps/customview/input/InputView_Num$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFinishListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Lcom/join/mgps/customview/input/InputView_Num$a;

    .line 2
    .line 3
    return-void
.end method
