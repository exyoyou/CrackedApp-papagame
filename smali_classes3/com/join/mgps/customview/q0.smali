.class public Lcom/join/mgps/customview/q0;
.super Lcom/join/mgps/customview/v;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/q0$f;
    }
.end annotation


# instance fields
.field b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

.field c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

.field d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field h:Lcom/join/mgps/customview/q0$f;

.field i:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field j:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field k:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;


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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/v;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/q0;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/q0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/q0;->e(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialTags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 23
    .line 24
    .line 25
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public d()Lcom/join/mgps/customview/q0$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/q0;->h:Lcom/join/mgps/customview/q0$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screening_condition"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/q0;->e(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/q0;->e(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/q0;->e(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public g(Lcom/join/mgps/customview/q0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameOperateListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/q0;->h:Lcom/join/mgps/customview/q0$f;

    .line 2
    .line 3
    return-void
.end method

.method public h(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "screening_condition"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 2
    .line 3
    const/16 v0, 0x50

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/v;->showAtLocation(Landroid/view/View;III)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/customview/q0;->i:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/join/mgps/customview/q0;->j:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/join/mgps/customview/q0;->k:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/q0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setData(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/q0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setData(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/customview/q0;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setData(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07f3

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a062a

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/customview/q0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 42
    .line 43
    const v1, 0x7f0a062b

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/customview/q0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 55
    .line 56
    const v1, 0x7f0a062c

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/customview/q0;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 68
    .line 69
    const v1, 0x7f0a137b

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/join/mgps/customview/q0;->e:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 81
    .line 82
    const v1, 0x7f0a150c

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/customview/q0;->f:Landroid/widget/TextView;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/customview/q0;->e:Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance v1, Lcom/join/mgps/customview/q0$a;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/q0$a;-><init>(Lcom/join/mgps/customview/q0;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/q0;->f:Landroid/widget/TextView;

    .line 104
    .line 105
    new-instance v1, Lcom/join/mgps/customview/q0$b;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/q0$b;-><init>(Lcom/join/mgps/customview/q0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/customview/q0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 114
    .line 115
    new-instance v1, Lcom/join/mgps/customview/q0$c;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/q0$c;-><init>(Lcom/join/mgps/customview/q0;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/customview/q0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 124
    .line 125
    new-instance v1, Lcom/join/mgps/customview/q0$d;

    .line 126
    .line 127
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/q0$d;-><init>(Lcom/join/mgps/customview/q0;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/customview/q0;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 134
    .line 135
    new-instance v1, Lcom/join/mgps/customview/q0$e;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/q0$e;-><init>(Lcom/join/mgps/customview/q0;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    return-void
.end method
