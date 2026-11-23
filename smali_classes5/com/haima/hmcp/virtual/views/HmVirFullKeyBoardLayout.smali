.class public Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;
    }
.end annotation


# static fields
.field public static IS_UPPER:Z


# instance fields
.field private clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

.field private isWordStatus:Z

.field private listSymbol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private listWord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private outClickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

.field private tempFocusColumn:I

.field private tempFocusRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 3
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 4
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->init()V

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

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 8
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 9
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->init()V

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 13
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 14
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->restoreFocusAfterCaseSwitch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->renderSymbolChild()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->renderWordChild()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->saveFocusPositionForCaseSwitch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->outClickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private init()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getFullKBSymbolList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->listSymbol:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getFullKBWordList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->listWord:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private renderSymbolChild()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->isWordStatus:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->listSymbol:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 24
    .line 25
    new-instance v2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 38
    .line 39
    invoke-virtual {v2, v1, v3}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->init(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$2;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private renderWordChild()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->isWordStatus:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->listWord:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 24
    .line 25
    new-instance v2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 38
    .line 39
    invoke-virtual {v2, v1, v3}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->init(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private restoreFocusAfterCaseSwitch()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 27
    .line 28
    iget-object v4, v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRow()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 37
    .line 38
    if-ne v4, v5, :cond_0

    .line 39
    .line 40
    iget-object v4, v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumn()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 47
    .line 48
    if-ne v4, v5, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "Focus restored to same position: row="

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ", column="

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, ", key="

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v3, v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "HmVirFullKeyBoardLayout"

    .line 101
    .line 102
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 110
    .line 111
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->requestFocusToNumberOneKey()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private saveFocusPositionForCaseSwitch()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRow()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 27
    .line 28
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumn()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "Saved focus position for case switch: row="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusRow:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", column="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->tempFocusColumn:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "HmVirFullKeyBoardLayout"

    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public requestFocusToLeftParenKey()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->isWordStatus:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRow()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x2

    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    iget-object v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumn()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-ne v2, v3, :cond_0

    .line 47
    .line 48
    iget-object v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "("

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 66
    .line 67
    .line 68
    const-string v0, "HmVirFullKeyBoardLayout"

    .line 69
    .line 70
    const-string v1, "Focus requested to left parenthesis key"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    return-void
.end method

.method public requestFocusToNumberOneKey()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->isWordStatus:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRow()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x2

    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    iget-object v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumn()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-ne v2, v3, :cond_0

    .line 47
    .line 48
    iget-object v2, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "1"

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 66
    .line 67
    .line 68
    const-string v0, "HmVirFullKeyBoardLayout"

    .line 69
    .line 70
    const-string v1, "Focus requested to number 1 key"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    return-void
.end method

.method public setChildParams(III)V
    .locals 0

    .line 1
    sput p1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defWidth:I

    .line 2
    .line 3
    sput p2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defHeight:I

    .line 4
    .line 5
    sput p3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defInterval:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->renderWordChild()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->outClickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public updateLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->isWordStatus:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->renderWordChild()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->renderSymbolChild()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
