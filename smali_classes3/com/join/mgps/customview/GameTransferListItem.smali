.class public Lcom/join/mgps/customview/GameTransferListItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EViewGroup;
    value = 0x7f0d0308
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "GameTransferListItem"


# instance fields
.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073e
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073f
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0744
    .end annotation
.end field

.field e:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0743
    .end annotation
.end field

.field f:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073d
    .end annotation
.end field

.field h:Lcom/join/mgps/dto/GameTransferBean;

.field i:I

.field j:Z

.field k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->l:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/GameTransferListItem;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b(ILandroid/util/SparseArray;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "array",
            "sending"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->i:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->k:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/join/mgps/dto/GameTransferBean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->b:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getSize()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "M"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->isSelectedTransfer()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-boolean p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->j:Z

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameTransferBean;->getIconUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const v0, 0x7f080caf

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0, p2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string p2, "bind: \u56fe\u7247\u5730\u5740"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameTransferBean;->getIconUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/CheckBox;

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/CheckBox;

    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->j:Z

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Landroid/widget/FrameLayout;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Landroid/widget/FrameLayout;

    .line 114
    .line 115
    xor-int/lit8 p3, p3, 0x1

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lcom/join/mgps/customview/GameTransferListItem$a;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/GameTransferListItem$a;-><init>(Lcom/join/mgps/customview/GameTransferListItem;)V

    .line 126
    .line 127
    .line 128
    iget-object p3, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    invoke-virtual {p3, p2}, Landroid/view/View;->setClickable(Z)V

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    const/4 p3, -0x1

    .line 140
    if-ne p2, p3, :cond_1

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/GameTransferListItem;->c()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eq v0, v1, :cond_5

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-eq v0, v1, :cond_4

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    if-eq v0, v1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    const v1, 0x7f1204f3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 62
    .line 63
    const/high16 v1, -0x10000

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 69
    .line 70
    const v1, 0x7f1204ef

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 78
    .line 79
    const v1, 0x7f1204f1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->l:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const v2, 0x7f060084

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getProgerss()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, "%"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/TextView;

    .line 134
    .line 135
    const v1, 0x7f120567

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void
.end method
