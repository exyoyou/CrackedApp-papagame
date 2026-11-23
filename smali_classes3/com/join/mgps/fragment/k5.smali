.class public Lcom/join/mgps/fragment/k5;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/k5$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02db
.end annotation


# instance fields
.field c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "contents"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/k5;->f:Ljava/util/ArrayList;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gtz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->e:Landroidx/core/widget/NestedScrollView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->d:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->e:Landroidx/core/widget/NestedScrollView;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->d:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :goto_1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 69
    .line 70
    .line 71
    iput v2, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v3, 0x7f0715d6

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    float-to-int v1, v1

    .line 85
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const v4, 0x7f07133d

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    float-to-int v1, v1

    .line 99
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 100
    .line 101
    new-instance v1, Lcom/join/mgps/base/decoration/b$a;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 104
    .line 105
    .line 106
    iput v2, v1, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    float-to-int v2, v2

    .line 117
    iput v2, v1, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    float-to-int v2, v2

    .line 128
    iput v2, v1, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 129
    .line 130
    iget-object v2, p0, Lcom/join/mgps/fragment/k5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    new-instance v3, Lcom/join/mgps/fragment/k5$a;

    .line 133
    .line 134
    invoke-direct {v3, p0, v0, v1}, Lcom/join/mgps/fragment/k5$a;-><init>(Lcom/join/mgps/fragment/k5;Lcom/join/mgps/base/decoration/b$a;Lcom/join/mgps/base/decoration/b$a;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const/4 v3, 0x2

    .line 149
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/fragment/k5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    new-instance v1, Lcom/join/mgps/fragment/k5$b;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k5$b;-><init>(Lcom/join/mgps/fragment/k5;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
