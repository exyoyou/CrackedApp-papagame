.class public Lcom/airsaid/pickerviewlibrary/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static k:Ljava/text/DateFormat; = null

.field public static final l:I = 0x7c6

.field public static final m:I = 0x834


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

.field private h:I

.field private i:I

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/airsaid/pickerviewlibrary/widget/c;->k:Ljava/text/DateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7c6

    .line 2
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    const/16 v0, 0x834

    .line 3
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 5
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 6
    sget-object v0, Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;->ALL:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    .line 7
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->p(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7c6

    .line 9
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    const/16 v0, 0x834

    .line 10
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 11
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 12
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 13
    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    .line 14
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->p(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/airsaid/pickerviewlibrary/widget/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method private n()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mTextSize: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 17
    .line 18
    sget-object v1, Lcom/airsaid/pickerviewlibrary/widget/c$c;->a:[I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    aget v1, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/high16 v3, 0x40400000    # 3.0f

    .line 30
    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    const/high16 v4, 0x40800000    # 4.0f

    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    if-eq v1, v2, :cond_1

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    if-eq v1, v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    mul-float v0, v0, v4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 63
    .line 64
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    mul-float v0, v0, v3

    .line 69
    .line 70
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    mul-float v0, v0, v4

    .line 77
    .line 78
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    mul-float v0, v0, v4

    .line 95
    .line 96
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 97
    .line 98
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    mul-float v0, v0, v3

    .line 108
    .line 109
    :goto_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 132
    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    const-string v1, "-"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const-string v1, " "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    const-string v1, ":"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public k(III)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l(IIIII)V
    .locals 7

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    const-string v1, "3"

    .line 4
    .line 5
    const-string v2, "5"

    .line 6
    .line 7
    const-string v3, "7"

    .line 8
    .line 9
    const-string v4, "8"

    .line 10
    .line 11
    const-string v5, "10"

    .line 12
    .line 13
    const-string v6, "12"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "9"

    .line 20
    .line 21
    const-string v2, "11"

    .line 22
    .line 23
    const-string v3, "4"

    .line 24
    .line 25
    const-string v4, "6"

    .line 26
    .line 27
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 46
    .line 47
    sget v4, Lcom/airsaid/pickerviewlibrary/R$id;->year:I

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 54
    .line 55
    iput-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 56
    .line 57
    new-instance v4, Lh/b;

    .line 58
    .line 59
    iget v5, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    .line 60
    .line 61
    iget v6, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    .line 62
    .line 63
    invoke-direct {v4, v5, v6}, Lh/b;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 70
    .line 71
    sget v4, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_year:I

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 81
    .line 82
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    .line 83
    .line 84
    sub-int v4, p1, v4

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 90
    .line 91
    sget v4, Lcom/airsaid/pickerviewlibrary/R$id;->month:I

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 98
    .line 99
    iput-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 100
    .line 101
    new-instance v4, Lh/b;

    .line 102
    .line 103
    const/16 v5, 0xc

    .line 104
    .line 105
    const/4 v6, 0x1

    .line 106
    invoke-direct {v4, v6, v5}, Lh/b;-><init>(II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 113
    .line 114
    sget v4, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_month:I

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 124
    .line 125
    invoke-virtual {v3, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 129
    .line 130
    sget v4, Lcom/airsaid/pickerviewlibrary/R$id;->day:I

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 137
    .line 138
    iput-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 139
    .line 140
    add-int/2addr p2, v6

    .line 141
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_0

    .line 150
    .line 151
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 152
    .line 153
    new-instance p2, Lh/b;

    .line 154
    .line 155
    const/16 v3, 0x1f

    .line 156
    .line 157
    invoke-direct {p2, v6, v3}, Lh/b;-><init>(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_1

    .line 173
    .line 174
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 175
    .line 176
    new-instance p2, Lh/b;

    .line 177
    .line 178
    const/16 v3, 0x1e

    .line 179
    .line 180
    invoke-direct {p2, v6, v3}, Lh/b;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    rem-int/lit8 p2, p1, 0x4

    .line 188
    .line 189
    if-nez p2, :cond_2

    .line 190
    .line 191
    rem-int/lit8 p2, p1, 0x64

    .line 192
    .line 193
    if-nez p2, :cond_3

    .line 194
    .line 195
    :cond_2
    rem-int/lit16 p1, p1, 0x190

    .line 196
    .line 197
    if-nez p1, :cond_4

    .line 198
    .line 199
    :cond_3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 200
    .line 201
    new-instance p2, Lh/b;

    .line 202
    .line 203
    const/16 v3, 0x1d

    .line 204
    .line 205
    invoke-direct {p2, v6, v3}, Lh/b;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 213
    .line 214
    new-instance p2, Lh/b;

    .line 215
    .line 216
    const/16 v3, 0x1c

    .line 217
    .line 218
    invoke-direct {p2, v6, v3}, Lh/b;-><init>(II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 222
    .line 223
    .line 224
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 225
    .line 226
    sget p2, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_day:I

    .line 227
    .line 228
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 236
    .line 237
    sub-int/2addr p3, v6

    .line 238
    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 242
    .line 243
    sget p2, Lcom/airsaid/pickerviewlibrary/R$id;->hour:I

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 250
    .line 251
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 252
    .line 253
    new-instance p2, Lh/b;

    .line 254
    .line 255
    const/16 p3, 0x17

    .line 256
    .line 257
    const/4 v3, 0x0

    .line 258
    invoke-direct {p2, v3, p3}, Lh/b;-><init>(II)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 265
    .line 266
    sget p2, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_hours:I

    .line 267
    .line 268
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 276
    .line 277
    invoke-virtual {p1, p4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 281
    .line 282
    sget p2, Lcom/airsaid/pickerviewlibrary/R$id;->min:I

    .line 283
    .line 284
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 289
    .line 290
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 291
    .line 292
    new-instance p2, Lh/b;

    .line 293
    .line 294
    const/16 p3, 0x3b

    .line 295
    .line 296
    invoke-direct {p2, v3, p3}, Lh/b;-><init>(II)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 303
    .line 304
    sget p2, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_minutes:I

    .line 305
    .line 306
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 314
    .line 315
    invoke-virtual {p1, p5}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 316
    .line 317
    .line 318
    new-instance p1, Lcom/airsaid/pickerviewlibrary/widget/c$a;

    .line 319
    .line 320
    invoke-direct {p1, p0, v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/c$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V

    .line 321
    .line 322
    .line 323
    new-instance p2, Lcom/airsaid/pickerviewlibrary/widget/c$b;

    .line 324
    .line 325
    invoke-direct {p2, p0, v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/c$b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V

    .line 326
    .line 327
    .line 328
    iget-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 329
    .line 330
    invoke-virtual {p3, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Li/c;)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 334
    .line 335
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Li/c;)V

    .line 336
    .line 337
    .line 338
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/c;->n()V

    .line 339
    .line 340
    .line 341
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public o(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/c;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method
