.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field public viewType:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->viewType:I

    .line 8
    .line 9
    return-void
.end method

.method private initializeCustomView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 17
    .line 18
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 27
    .line 28
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 37
    .line 38
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 63
    .line 64
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 72
    .line 73
    iget-boolean v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;

    .line 79
    .line 80
    invoke-direct {v1, p0, p1, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    return-object p2
.end method

.method private initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 17
    .line 18
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 27
    .line 28
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 37
    .line 38
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 63
    .line 64
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 72
    .line 73
    iget v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v2, 0x0

    .line 80
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;

    .line 84
    .line 85
    invoke-direct {v1, p0, v0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 89
    .line 90
    const/16 v0, 0x8

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 106
    .line 107
    .line 108
    return-object p2
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->viewType:I

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p4}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat:I

    .line 2
    .line 3
    return v0
.end method
