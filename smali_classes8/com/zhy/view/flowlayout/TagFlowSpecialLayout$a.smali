.class Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;


# direct methods
.method public constructor <init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 2
    .line 3
    iget-object p4, p4, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p4, 0x1

    .line 27
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p4, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 31
    .line 32
    iput-object p1, p4, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 33
    .line 34
    iget-object p4, p4, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->e:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    iget-object p2, p2, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-interface {p4, p2, p1, p3}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;->a(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Landroid/view/ViewGroup;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
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

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const v1, 0x7f0d085f

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    move-object v1, p2

    .line 34
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->getItem(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isIsselected()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 54
    .line 55
    iput-object p1, v1, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 56
    .line 57
    :cond_1
    iget-object v1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/zhy/view/flowlayout/d;

    .line 67
    .line 68
    invoke-direct {v1, p0, p1, v0, p3}, Lcom/zhy/view/flowlayout/d;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;)V

    .line 69
    .line 70
    .line 71
    iget-object p3, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isIsselected()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object p3, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 85
    .line 86
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    const v1, 0x7f06002b

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 101
    .line 102
    const p3, 0x7f081228

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object p3, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 112
    .line 113
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    const v1, 0x7f060442

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 128
    .line 129
    const p3, 0x7f08009c

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
