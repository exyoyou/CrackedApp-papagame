.class Lm/framework/ui/widget/pulltorefresh/GroupListView$1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/GroupListView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

.field private final synthetic val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/GroupListView;Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

    .line 2
    .line 3
    iput-object p2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private getItemIndex(I)[I
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, -0x2

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 8
    .line 9
    invoke-virtual {v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-lt v3, v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v5, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 20
    .line 21
    invoke-virtual {v5, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    add-int/2addr v5, v6

    .line 27
    add-int/2addr v5, v4

    .line 28
    if-le v5, p1, :cond_1

    .line 29
    .line 30
    aput v3, v0, v2

    .line 31
    .line 32
    sub-int/2addr p1, v4

    .line 33
    sub-int/2addr p1, v6

    .line 34
    aput p1, v0, v6

    .line 35
    .line 36
    :goto_1
    return-object v0

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    move v4, v5

    .line 40
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-lt v1, v0, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    add-int/2addr v2, v3

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    aget v0, p1, v0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aget p1, p1, v1

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-le v0, v1, :cond_1

    .line 13
    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitle(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    if-le p1, v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChild(II)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    aget v0, p1, v0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aget p1, p1, v1

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    new-instance p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {p2, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;-><init>(Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-direct {v3, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    .line 33
    .line 34
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    if-le v0, v2, :cond_1

    .line 40
    .line 41
    if-ne p1, v2, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 44
    .line 45
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 46
    .line 47
    iget-object v1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {p1, v0, p3, v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 54
    .line 55
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    if-le p1, v2, :cond_1

    .line 62
    .line 63
    iget-object p3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 64
    .line 65
    iget-object v1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 66
    .line 67
    iget-object v2, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-virtual {p3, v0, p1, v1, v2}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 74
    .line 75
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    iget-object p2, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    .line 88
    .line 89
    if-le v0, v2, :cond_4

    .line 90
    .line 91
    if-ne p1, v2, :cond_3

    .line 92
    .line 93
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 94
    .line 95
    iget-object v1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 96
    .line 97
    iget-object v2, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1, v2}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 104
    .line 105
    iget-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    iget-object p3, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    if-le p1, v2, :cond_4

    .line 116
    .line 117
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 118
    .line 119
    iget-object v2, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 120
    .line 121
    iget-object v3, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {v1, v0, p1, v2, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 128
    .line 129
    iget-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    iget-object p3, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_1
    return-object p2
.end method
