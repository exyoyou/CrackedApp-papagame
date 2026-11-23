.class public Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isMovingState:Z

.field public mCenterLandY:I

.field public mCenterPortraitX:I

.field private mHmBaseVirtualViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private mLandBottomBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

.field private mLandCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

.field private mLandTopBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

.field private mMoveView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

.field private mPortraitCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

.field private mPortraitLeftBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

.field private mPortraitRightBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

.field public maxLandY:I

.field public maxPortraitX:I

.field public minLandY:I

.field public minPortraitX:I


# direct methods
.method public constructor <init>(IIIIIILandroid/content/Context;Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mHmBaseVirtualViewList:Ljava/util/List;

    .line 13
    .line 14
    iput-object p8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mMoveView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 15
    .line 16
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 17
    .line 18
    int-to-float p8, p3

    .line 19
    const/high16 v1, 0x3f000000    # 0.5f

    .line 20
    .line 21
    mul-float p8, p8, v1

    .line 22
    .line 23
    int-to-float v2, p1

    .line 24
    add-float/2addr p8, v2

    .line 25
    float-to-int p8, p8

    .line 26
    iput p8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterPortraitX:I

    .line 27
    .line 28
    add-int/2addr p1, p3

    .line 29
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 30
    .line 31
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 32
    .line 33
    int-to-float p1, p4

    .line 34
    mul-float p1, p1, v1

    .line 35
    .line 36
    int-to-float p3, p2

    .line 37
    add-float/2addr p1, p3

    .line 38
    float-to-int p1, p1

    .line 39
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterLandY:I

    .line 40
    .line 41
    add-int/2addr p2, p4

    .line 42
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 43
    .line 44
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 45
    .line 46
    invoke-direct {p1, p7, p5, p6}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;-><init>(Landroid/content/Context;II)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitLeftBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setDirection(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitLeftBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 56
    .line 57
    iget p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 63
    .line 64
    invoke-direct {p1, p7, p5, p6}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;-><init>(Landroid/content/Context;II)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setDirection(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 73
    .line 74
    iget p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterPortraitX:I

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 80
    .line 81
    invoke-direct {p1, p7, p5, p6}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;-><init>(Landroid/content/Context;II)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitRightBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setDirection(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitRightBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 90
    .line 91
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 97
    .line 98
    invoke-direct {p1, p7, p5, p6}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;-><init>(Landroid/content/Context;II)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandTopBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setDirection(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandTopBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 107
    .line 108
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setLandY(I)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 114
    .line 115
    invoke-direct {p1, p7, p5, p6}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;-><init>(Landroid/content/Context;II)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setDirection(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 124
    .line 125
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterLandY:I

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 131
    .line 132
    invoke-direct {p1, p7, p5, p6}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;-><init>(Landroid/content/Context;II)V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandBottomBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setDirection(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandBottomBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 141
    .line 142
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private isNeedAlign(II)Z
    .locals 0

    .line 1
    sub-int/2addr p1, p2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 p2, 0x1

    .line 7
    if-gt p1, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    return p2
.end method


# virtual methods
.method public drawAlignLines(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mHmBaseVirtualViewList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    return-void

    .line 27
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->drawBaseAlineLines(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    :cond_4
    :goto_0
    return-void
.end method

.method public drawBaseAlineLines(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mHmBaseVirtualViewList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_b

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mMoveView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 25
    .line 26
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 27
    .line 28
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 29
    .line 30
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 37
    .line 38
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 39
    .line 40
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 41
    .line 42
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitLeftBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterPortraitX:I

    .line 54
    .line 55
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 56
    .line 57
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterPortraitX:I

    .line 58
    .line 59
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 71
    .line 72
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 73
    .line 74
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 75
    .line 76
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 83
    .line 84
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 85
    .line 86
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 87
    .line 88
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitRightBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 95
    .line 96
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 100
    .line 101
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 102
    .line 103
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 104
    .line 105
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 112
    .line 113
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 114
    .line 115
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 116
    .line 117
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    :cond_7
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandTopBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 124
    .line 125
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    .line 127
    .line 128
    :cond_8
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterLandY:I

    .line 129
    .line 130
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 131
    .line 132
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterLandY:I

    .line 133
    .line 134
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 141
    .line 142
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 143
    .line 144
    .line 145
    :cond_9
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 146
    .line 147
    iget-object v3, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 148
    .line 149
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 150
    .line 151
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_a

    .line 156
    .line 157
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 158
    .line 159
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 160
    .line 161
    iget v1, v1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 162
    .line 163
    invoke-direct {p0, v2, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isNeedAlign(II)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_0

    .line 168
    .line 169
    :cond_a
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandBottomBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 170
    .line 171
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_b
    return-void
.end method

.method public updateAlignLinesView(IIII)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minPortraitX:I

    .line 2
    .line 3
    int-to-float v0, p3

    .line 4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    mul-float v0, v0, v1

    .line 7
    .line 8
    int-to-float v2, p1

    .line 9
    add-float/2addr v0, v2

    .line 10
    float-to-int v0, v0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterPortraitX:I

    .line 12
    .line 13
    add-int/2addr p3, p1

    .line 14
    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 15
    .line 16
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 17
    .line 18
    int-to-float p3, p4

    .line 19
    mul-float p3, p3, v1

    .line 20
    .line 21
    int-to-float v0, p2

    .line 22
    add-float/2addr p3, v0

    .line 23
    float-to-int p3, p3

    .line 24
    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterLandY:I

    .line 25
    .line 26
    add-int/2addr p2, p4

    .line 27
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 28
    .line 29
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitLeftBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 35
    .line 36
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterPortraitX:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mPortraitRightBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 42
    .line 43
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxPortraitX:I

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setPortraitX(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandTopBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 49
    .line 50
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->minLandY:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setLandY(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandCenterBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 56
    .line 57
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mCenterLandY:I

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setLandY(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mLandBottomBaseline:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;

    .line 63
    .line 64
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->maxLandY:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLineView;->setLandY(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public updateVirtualViewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->mHmBaseVirtualViewList:Ljava/util/List;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
