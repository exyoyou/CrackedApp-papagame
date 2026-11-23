.class public Lcom/beizi/fusion/work/g/b;
.super Lcom/beizi/fusion/work/g/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/beizi/fusion/tool/am$a;
.implements Lcom/beizi/fusion/tool/aq$a;


# instance fields
.field private W:Landroid/view/ViewGroup;

.field private X:Landroid/widget/FrameLayout;

.field private Y:Lcom/beizi/ad/v2/d/c;

.field private Z:Lcom/beizi/ad/e;

.field private aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/beizi/fusion/work/g/a;-><init>(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;I)V

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
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b;->ac:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;Lcom/beizi/ad/e;)Lcom/beizi/ad/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;)Lcom/beizi/ad/v2/d/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b;->ad:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;D)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/work/a;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/g/b;Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private aS()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "shakeViewBean != null ? "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "BeiZis"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/beizi/fusion/work/g/b$7;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/g/b$7;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ap()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method

.method private aT()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/beizi/fusion/tool/aq;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/aq;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/g/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->ad:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/aq;->a(Ljava/lang/Boolean;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iget-object v2, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    int-to-float v3, v3

    .line 131
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iget-object v3, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/aq;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 156
    .line 157
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .line 159
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 160
    .line 161
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 162
    .line 163
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 167
    .line 168
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 169
    .line 170
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 171
    .line 172
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 173
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 175
    .line 176
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->P:Lcom/beizi/fusion/tool/aq;

    .line 180
    .line 181
    invoke-virtual {v0, p0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :cond_5
    :goto_1
    return-void
.end method

.method private aU()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollClickUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getOrderData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/g/b;->b(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;->getScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollClickUuid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;->getScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setScrollClickUuid(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->ad:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/am;->a(Ljava/lang/Boolean;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    int-to-float v2, v2

    .line 94
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v2, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    int-to-float v3, v3

    .line 107
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iget-object v3, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/am;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    .line 133
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    .line 135
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 136
    .line 137
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 138
    .line 139
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 143
    .line 144
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 145
    .line 146
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 147
    .line 148
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 151
    .line 152
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/tool/am$a;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollDirection()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollDistance()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/beizi/fusion/work/g/a;->a(Landroid/view/View;Ljava/lang/String;ILcom/beizi/fusion/tool/am$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :cond_3
    :goto_1
    return-void
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;

    .line 5
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/g/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->x()V

    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/g/b;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    const-string v0, "BeiZis"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter showBeiZiUnifiedCustomAd clickUnifiedAd clickEventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 16
    iget-object v3, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 17
    div-int/2addr v1, p1

    div-int/2addr v3, p1

    invoke-static {v1, v3}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    move-result-object p1

    .line 18
    iget-object v3, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    iget-object v4, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    aget v1, p1, v2

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    aget v6, p1, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget v7, p1, v2

    aget v2, v0, v2

    add-int/2addr v7, v2

    .line 20
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aget p1, p1, v1

    aget v0, v0, v1

    add-int/2addr p1, v0

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 22
    invoke-static/range {v3 .. v9}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/beizi/fusion/work/g/b;)Lcom/beizi/ad/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/beizi/fusion/work/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/g/b;->aT()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/beizi/fusion/work/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/g/b;->aU()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->T:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;->getClickView()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "bg"

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ad"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "image"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->W:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->W:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->ac:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/work/g/b;->W:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    if-nez v4, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/ad/v2/a/a;->a(Ljava/util/Map;)V

    .line 23
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 25
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 29
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 35
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 40
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 41
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 43
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 44
    check-cast p1, Ljava/lang/String;

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 48
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public aA()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/work/g/a;->aA()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->o:Landroid/view/View;

    .line 5
    .line 6
    sget v1, Lcom/beizi/fusion/R$id;->fl_container_mask:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/beizi/fusion/work/g/b;->W:Landroid/view/ViewGroup;

    .line 15
    .line 16
    return-void
.end method

.method public aB()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->u()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/beizi/fusion/work/g/b;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ":requestAd:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "===="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "==="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/beizi/fusion/work/g/a;->H:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/beizi/fusion/work/g/a;->H:J

    .line 57
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    cmp-long v5, v0, v2

    .line 62
    .line 63
    if-lez v5, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->u()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ge v0, v4, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x2

    .line 88
    if-eq v0, v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/beizi/fusion/work/g/a;->k()V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    new-instance v0, Lcom/beizi/fusion/tool/am;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 96
    .line 97
    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/am;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/beizi/fusion/work/g/a;->Q:Lcom/beizi/fusion/tool/am;

    .line 101
    .line 102
    return-void
.end method

.method public aC()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/work/g/b;->aa:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 16
    .line 17
    new-instance v0, Lcom/beizi/ad/v2/d/c;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v3, Lcom/beizi/fusion/work/g/b$1;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/g/b$1;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lcom/beizi/ad/v2/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/d;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "S2S"

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->c(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->B()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->b(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->C()Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->c(Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->D()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->d(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->c()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public aH()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->T:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;->getCec()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "regionalClick"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/g/a;->aR()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public aI()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/g/b;->aS()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->ac:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->ac:Ljava/util/List;

    .line 19
    .line 20
    new-instance v3, Lcom/beizi/fusion/work/g/b$3;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/g/b$3;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Ljava/util/List;Lcom/beizi/ad/internal/c/b;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    new-instance v2, Lcom/beizi/fusion/work/g/b$4;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/g/b$4;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Lcom/beizi/ad/internal/c/b;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    new-instance v2, Lcom/beizi/fusion/work/g/b$5;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/g/b$5;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/v2/d/c;->a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->T:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;->getRmc()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-double v0, v0, v2

    .line 77
    .line 78
    add-double/2addr v0, v2

    .line 79
    double-to-long v0, v0

    .line 80
    new-instance v2, Landroid/os/Handler;

    .line 81
    .line 82
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lcom/beizi/fusion/work/g/b$6;

    .line 86
    .line 87
    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/g/b$6;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public aK()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->t:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->t:Landroid/view/ViewGroup;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/beizi/fusion/work/g/b;->X:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->W:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->t:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x3

    .line 26
    if-lt v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    return-object v0
.end method

.method public aQ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, -0x3df

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/a;->d(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/beizi/ad/e;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/beizi/fusion/work/g/b$2;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/g/b$2;-><init>(Lcom/beizi/fusion/work/g/b;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public a_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->ab:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BeiZis"

    .line 6
    .line 7
    const-string v1, "enter showBeiZiUnifiedCustomAd onScrollDistanceMeet  "

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "scroll"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ax()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->m()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public az()I
    .locals 1

    .line 1
    sget v0, Lcom/beizi/fusion/R$layout;->beizi_layout_unified_view:I

    .line 2
    .line 3
    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "BeiZis"

    const-string v1, "enter showBeiZiUnifiedCustomAd onShakeHappened  "

    .line 7
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shake"

    .line 8
    invoke-direct {p0, v0}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "lossReason"

    const-string v1, "adnId"

    const-string v2, "winPrice"

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    if-nez v3, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/ad/v2/a/a;->b(Ljava/util/Map;)V

    .line 31
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 33
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 37
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 45
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 50
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/g/a;->T:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;->getSlc()I

    move-result v0

    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/g/a;->T:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RenderAds;->getSlac()I

    move-result v1

    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    const-string v2, "regionalClick"

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0, v2}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 27
    invoke-direct {p0, v2}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/g/a;->aR()V

    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "BEIZI"

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Z:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/e;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->f()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "regionalClick"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/g/b;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected z()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b;->Y:Lcom/beizi/ad/v2/d/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ag()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
