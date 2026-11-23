.class Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/MenuFrameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private cheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private editCheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tab:I

.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->cheatInfos:Ljava/util/List;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private initializeCustomView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 39
    .line 40
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 59
    .line 60
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->getItem(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 78
    .line 79
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-boolean v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;

    .line 94
    .line 95
    invoke-direct {v1, p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    return-object p2
.end method

.method private initializeVipView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 39
    .line 40
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 59
    .line 60
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->getItem(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 78
    .line 79
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 87
    .line 88
    iget v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 89
    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 v2, 0x0

    .line 95
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;

    .line 99
    .line 100
    invoke-direct {v1, p0, v0, p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;-><init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 104
    .line 105
    const/16 v0, 0x8

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 121
    .line 122
    .line 123
    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->cheatInfos:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->cheatInfos:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->editCheatInfos:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeVipView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 15
    .line 16
    iget-object p3, p3, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method
