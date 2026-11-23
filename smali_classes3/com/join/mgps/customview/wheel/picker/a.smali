.class public Lcom/join/mgps/customview/wheel/picker/a;
.super Lcom/join/mgps/customview/wheel/picker/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/wheel/picker/a$d;,
        Lcom/join/mgps/customview/wheel/picker/a$e;
    }
.end annotation


# instance fields
.field private V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private b1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

.field private f1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

.field private i1:I

.field private l1:I

.field private p0:Ljava/lang/String;

.field private p1:I

.field private q1:I

.field private r1:I

.field private v1:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/c;-><init>(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 17
    .line 18
    const-string p1, "\u5206"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->X:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "\u79d2"

    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->Y:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->l1:I

    .line 34
    .line 35
    const/16 p1, 0x3b

    .line 36
    .line 37
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->p1:I

    .line 38
    .line 39
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->q1:I

    .line 40
    .line 41
    const/16 p1, 0x10

    .line 42
    .line 43
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->r1:I

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->v1:Z

    .line 47
    .line 48
    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/customview/wheel/picker/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I0(Lcom/join/mgps/customview/wheel/picker/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic J0(Lcom/join/mgps/customview/wheel/picker/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K0(Lcom/join/mgps/customview/wheel/picker/a;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/a;->b1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L0(Lcom/join/mgps/customview/wheel/picker/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M0(Lcom/join/mgps/customview/wheel/picker/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic N0(Lcom/join/mgps/customview/wheel/picker/a;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/a;->Q0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/customview/wheel/picker/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private P0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x5

    .line 9
    if-gt v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, ""

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, -0x1

    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private Q0(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selected",
            "selectedMin"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x5

    .line 9
    if-ge p2, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x3b

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_1
    if-gt v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 p2, -0x1

    .line 53
    if-ne p1, p2, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method private R0(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "items",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/a$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/wheel/picker/a$c;-><init>(Lcom/join/mgps/customview/wheel/picker/a;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "Item["

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, "] out of range"

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method


# virtual methods
.method protected G()Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/a;->P0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/wheel/picker/a;->Q0(II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/popup/a;->b:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x11

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    const/4 v5, -0x2

    .line 62
    const/high16 v6, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/join/mgps/customview/wheel/picker/a;->V:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v7, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v4, v7}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v4, Lcom/join/mgps/customview/wheel/picker/a$a;

    .line 78
    .line 79
    invoke-direct {v4, p0, v3}, Lcom/join/mgps/customview/wheel/picker/a$a;-><init>(Lcom/join/mgps/customview/wheel/picker/a;Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 83
    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v2, v4}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setCycleDisable(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->X:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget v7, p0, Lcom/join/mgps/customview/wheel/picker/a;->r1:I

    .line 105
    .line 106
    int-to-float v7, v7

    .line 107
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    .line 109
    .line 110
    iget-object v7, p0, Lcom/join/mgps/customview/wheel/picker/a;->X:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    invoke-direct {v2, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/a;->W:Ljava/util/ArrayList;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v1, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/a$b;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/wheel/picker/a$b;-><init>(Lcom/join/mgps/customview/wheel/picker/a;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setCycleDisable(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/a;->Y:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_3

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->r1:I

    .line 160
    .line 161
    int-to-float v2, v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->Y:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-object v0
.end method

.method protected K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->f1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/a;->S0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/a;->T0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/a;->f1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 15
    .line 16
    check-cast v2, Lcom/join/mgps/customview/wheel/picker/a$d;

    .line 17
    .line 18
    invoke-interface {v2, v0, v1}, Lcom/join/mgps/customview/wheel/picker/a$d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public S0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->Z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public T0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/a;->p0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public U0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minuteLabel",
            "secondLabel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->X:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/wheel/picker/a;->Y:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public V0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->f1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 2
    .line 3
    return-void
.end method

.method public W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onWheelListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->b1:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 2
    .line 3
    return-void
.end method

.method public X0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resetWhileWheel"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->v1:Z

    .line 2
    .line 3
    return-void
.end method

.method public Y0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "endMinute",
            "endSecond"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->p1:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/a;->q1:I

    .line 4
    .line 5
    return-void
.end method

.method public Z0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startMinute",
            "startSecond"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/a;->i1:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/a;->l1:I

    .line 4
    .line 5
    return-void
.end method
