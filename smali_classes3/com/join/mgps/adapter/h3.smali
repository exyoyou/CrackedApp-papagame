.class public Lcom/join/mgps/adapter/h3;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/h3$b;
    }
.end annotation


# instance fields
.field b:Lcom/join/mgps/dto/ExtBean;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/h3;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "informationListDataBeans",
            "extBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;",
            "Lcom/join/mgps/dto/ExtBean;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/h3;->c:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/h3;->d:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/h3;->b:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/h3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h3;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h3;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/h3$b;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/h3$b;-><init>(Lcom/join/mgps/adapter/h3;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/h3;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d03a4

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a0867

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/h3$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v0, 0x7f0a18f6

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/h3$b;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0a18be

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/h3$b;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Lcom/join/mgps/adapter/h3$b;

    .line 64
    .line 65
    move-object v5, p3

    .line 66
    move-object p3, p2

    .line 67
    move-object p2, v5

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h3;->d:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/mgps/dto/InformationListDataBean;

    .line 75
    .line 76
    iget-object v1, p2, Lcom/join/mgps/adapter/h3$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/adapter/h3;->c:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const v3, 0x7f08018d

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p2, Lcom/join/mgps/adapter/h3$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getMaterial()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v4, p0, Lcom/join/mgps/adapter/h3;->c:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v4}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v1, v3, v2, v4}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p2, Lcom/join/mgps/adapter/h3$b;->b:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getTitle()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p2, Lcom/join/mgps/adapter/h3$b;->c:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getPraise()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p2, Lcom/join/mgps/adapter/h3$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 128
    .line 129
    new-instance v1, Lcom/join/mgps/adapter/h3$a;

    .line 130
    .line 131
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/adapter/h3$a;-><init>(Lcom/join/mgps/adapter/h3;Lcom/join/mgps/dto/InformationListDataBean;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    return-object p3
.end method
