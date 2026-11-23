.class Lcom/join/mgps/customview/a0$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/a0;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/a0;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
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
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/customview/a0$e;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/customview/a0$e;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 13
    .line 14
    invoke-direct {p3, p2}, Lcom/join/mgps/customview/a0$e;-><init>(Lcom/join/mgps/customview/a0;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/join/mgps/customview/a0;->c(Lcom/join/mgps/customview/a0;)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const v0, 0x7f0d07ee

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const v0, 0x7f0a1767

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p3, Lcom/join/mgps/customview/a0$e;->a:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a12ee

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p3, Lcom/join/mgps/customview/a0$e;->b:Landroid/view/View;

    .line 54
    .line 55
    const v0, 0x7f0a12fa

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p3, Lcom/join/mgps/customview/a0$e;->c:Landroid/view/View;

    .line 63
    .line 64
    const v0, 0x7f0a0e61

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p3, Lcom/join/mgps/customview/a0$e;->d:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/a0$b;->getItem(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, p3, Lcom/join/mgps/customview/a0$e;->a:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x1

    .line 96
    const/4 v3, 0x4

    .line 97
    const/4 v4, 0x0

    .line 98
    if-nez v1, :cond_1

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/customview/a0$b;->b:Lcom/join/mgps/customview/a0;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    iget-object v0, p3, Lcom/join/mgps/customview/a0$e;->a:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p3, Lcom/join/mgps/customview/a0$e;->b:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/customview/a0$e;->a:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p3, Lcom/join/mgps/customview/a0$e;->b:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/a0$b;->getCount()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-int/2addr v0, v2

    .line 136
    if-ne p1, v0, :cond_2

    .line 137
    .line 138
    iget-object p1, p3, Lcom/join/mgps/customview/a0$e;->d:Landroid/view/View;

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/customview/a0$e;->d:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :goto_2
    return-object p2
.end method
