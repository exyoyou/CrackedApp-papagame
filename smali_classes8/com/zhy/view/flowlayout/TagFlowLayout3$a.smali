.class Lcom/zhy/view/flowlayout/TagFlowLayout3$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/view/flowlayout/TagFlowLayout3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/zhy/view/flowlayout/TagFlowLayout3;


# direct methods
.method public constructor <init>(Lcom/zhy/view/flowlayout/TagFlowLayout3;)V
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
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b(ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 2
    .line 3
    iput p1, p4, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 4
    .line 5
    iget-object p4, p4, Lcom/zhy/view/flowlayout/TagFlowLayout3;->e:Lcom/zhy/view/flowlayout/TagFlowLayout3$b;

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    iget-object p2, p2, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-interface {p4, p2, p1, p3}, Lcom/zhy/view/flowlayout/TagFlowLayout3$b;->a(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->c:Ljava/util/List;

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
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b:Lcom/zhy/view/flowlayout/TagFlowLayout3;

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
    const v1, 0x7f0d0833

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
    const v1, 0x7f0a1a36

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->getItem(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/zhy/view/flowlayout/c;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, v0, p3}, Lcom/zhy/view/flowlayout/c;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;)V

    .line 61
    .line 62
    .line 63
    iget-object p3, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 69
    .line 70
    iget v1, p3, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:I

    .line 71
    .line 72
    if-ne p1, v1, :cond_1

    .line 73
    .line 74
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    const v1, 0x7f0604d3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 91
    .line 92
    const p3, 0x7f0812bb

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    const v1, 0x7f060442

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 116
    .line 117
    const p3, 0x7f0812ff

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    .line 122
    .line 123
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
