.class public Lcom/join/mgps/adapter/h6;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/h6$a;
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/join/mgps/adapter/h6$a;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/h6;->f:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/h6;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/h6;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/h6;->d:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/h6;->f:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h6;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/h6;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/h6$a;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/h6$a;-><init>(Lcom/join/mgps/adapter/h6;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/adapter/h6;->d:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const p3, 0x7f0d047d

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p3, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 21
    .line 22
    const v0, 0x7f0a09ab

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    iput-object v0, p3, Lcom/join/mgps/adapter/h6$a;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    iget-object p3, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 34
    .line 35
    const v0, 0x7f0a09ad

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object v0, p3, Lcom/join/mgps/adapter/h6$a;->b:Landroid/widget/ImageView;

    .line 45
    .line 46
    iget-object p3, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 47
    .line 48
    const v0, 0x7f0a099f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p3, Lcom/join/mgps/adapter/h6$a;->c:Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object p3, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Lcom/join/mgps/adapter/h6$a;

    .line 70
    .line 71
    iput-object p3, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 72
    .line 73
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/adapter/h6;->b:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 80
    .line 81
    iget v0, p0, Lcom/join/mgps/adapter/h6;->f:I

    .line 82
    .line 83
    if-ne p1, v0, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/adapter/h6$a;->b:Landroid/widget/ImageView;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/join/mgps/adapter/h6$a;->c:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string v0, "#6ee6fe"

    .line 98
    .line 99
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/join/mgps/adapter/h6$a;->b:Landroid/widget/ImageView;

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/join/mgps/adapter/h6$a;->c:Landroid/widget/TextView;

    .line 119
    .line 120
    const-string v0, "#156d84"

    .line 121
    .line 122
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/adapter/h6;->e:Lcom/join/mgps/adapter/h6$a;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/join/mgps/adapter/h6$a;->c:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-object p2
.end method
