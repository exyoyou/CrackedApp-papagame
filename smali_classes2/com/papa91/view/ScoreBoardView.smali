.class public Lcom/papa91/view/ScoreBoardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field name1:Ljava/lang/String;

.field name2:Ljava/lang/String;

.field private p1Name:Landroid/widget/TextView;

.field private p1Score:Landroid/widget/TextView;

.field private p1Signal:Landroid/widget/ImageView;

.field private p2Name:Landroid/widget/TextView;

.field private p2Score:Landroid/widget/TextView;

.field private p2Signal:Landroid/widget/ImageView;

.field score1:I

.field score2:I

.field signal1:I

.field signal2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/ScoreBoardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/view/ScoreBoardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/papa91/view/ScoreBoardView;->init()V

    return-void
.end method

.method private signalResId(I)I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/papa91/mix/R$drawable;->wifi_high:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/16 v0, 0x190

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    sget p1, Lcom/papa91/mix/R$drawable;->wifi_mid:I

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    sget p1, Lcom/papa91/mix/R$drawable;->wifi_low:I

    .line 16
    .line 17
    return p1
.end method


# virtual methods
.method public getName1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/ScoreBoardView;->name1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/ScoreBoardView;->name2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/ScoreBoardView;->score1:I

    .line 2
    .line 3
    return v0
.end method

.method public getScore2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/ScoreBoardView;->score2:I

    .line 2
    .line 3
    return v0
.end method

.method public getSignal1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/ScoreBoardView;->signal1:I

    .line 2
    .line 3
    return v0
.end method

.method public getSignal2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/ScoreBoardView;->signal2:I

    .line 2
    .line 3
    return v0
.end method

.method init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/papa91/mix/R$layout;->score_board_layout:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/papa91/mix/R$id;->name1:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/papa91/view/ScoreBoardView;->p1Name:Landroid/widget/TextView;

    .line 24
    .line 25
    sget v1, Lcom/papa91/mix/R$id;->score1:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/papa91/view/ScoreBoardView;->p1Score:Landroid/widget/TextView;

    .line 34
    .line 35
    sget v1, Lcom/papa91/mix/R$id;->signal1:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/papa91/view/ScoreBoardView;->p1Signal:Landroid/widget/ImageView;

    .line 44
    .line 45
    sget v1, Lcom/papa91/mix/R$id;->name2:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/papa91/view/ScoreBoardView;->p2Name:Landroid/widget/TextView;

    .line 54
    .line 55
    sget v1, Lcom/papa91/mix/R$id;->score2:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/papa91/view/ScoreBoardView;->p2Score:Landroid/widget/TextView;

    .line 64
    .line 65
    sget v1, Lcom/papa91/mix/R$id;->signal2:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/papa91/view/ScoreBoardView;->p2Signal:Landroid/widget/ImageView;

    .line 74
    .line 75
    return-void
.end method

.method public setName1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa91/view/ScoreBoardView;->name1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/view/ScoreBoardView;->p1Name:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setName2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa91/view/ScoreBoardView;->name2:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/view/ScoreBoardView;->p2Name:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setScore1(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/papa91/view/ScoreBoardView;->score1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/view/ScoreBoardView;->p1Score:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setScore2(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/papa91/view/ScoreBoardView;->score2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/view/ScoreBoardView;->p2Score:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setSignal1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/ScoreBoardView;->signal1:I

    .line 2
    .line 3
    return-void
.end method

.method public setSignal2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/ScoreBoardView;->signal2:I

    .line 2
    .line 3
    return-void
.end method
