.class Lcom/join/mgps/dialog/f$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/f$d$b;,
        Lcom/join/mgps/dialog/f$d$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dialog/f$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/dialog/f;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dialog/f$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/f$d;->c:Lcom/join/mgps/dialog/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/f$d;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/f$d;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/f$d;->b:Ljava/util/List;

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

.method public getItemViewType(I)I
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
    iget-object v0, p0, Lcom/join/mgps/dialog/f$d;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dialog/f$c;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/dialog/f$c;->b:I

    .line 10
    .line 11
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
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/f$d;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/mgps/dialog/f$d;->c:Lcom/join/mgps/dialog/f;

    .line 9
    .line 10
    iget p2, p2, Lcom/join/mgps/dialog/f;->e:I

    .line 11
    .line 12
    if-ne v0, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const p3, 0x7f0d03b9

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance p3, Lcom/join/mgps/dialog/f$d$b;

    .line 30
    .line 31
    invoke-direct {p3, p0}, Lcom/join/mgps/dialog/f$d$b;-><init>(Lcom/join/mgps/dialog/f$d;)V

    .line 32
    .line 33
    .line 34
    const v2, 0x7f0a1a48

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v2, p3, Lcom/join/mgps/dialog/f$d$b;->a:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const p3, 0x7f0d03ba

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance v1, Lcom/join/mgps/dialog/f$d$a;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/f$d$a;-><init>(Lcom/join/mgps/dialog/f$d;)V

    .line 67
    .line 68
    .line 69
    const p3, 0x7f0a198e

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    check-cast p3, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object p3, v1, Lcom/join/mgps/dialog/f$d$a;->a:Landroid/widget/TextView;

    .line 79
    .line 80
    const p3, 0x7f0a057c

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    iput-object p3, v1, Lcom/join/mgps/dialog/f$d$a;->b:Landroid/view/View;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/dialog/f$d;->c:Lcom/join/mgps/dialog/f;

    .line 98
    .line 99
    iget p3, p3, Lcom/join/mgps/dialog/f;->e:I

    .line 100
    .line 101
    if-ne v0, p3, :cond_2

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    check-cast p3, Lcom/join/mgps/dialog/f$d$b;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    move-object v1, p3

    .line 115
    check-cast v1, Lcom/join/mgps/dialog/f$d$a;

    .line 116
    .line 117
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/dialog/f$d;->b:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/join/mgps/dialog/f$c;

    .line 124
    .line 125
    iget-object p3, p0, Lcom/join/mgps/dialog/f$d;->c:Lcom/join/mgps/dialog/f;

    .line 126
    .line 127
    iget p3, p3, Lcom/join/mgps/dialog/f;->e:I

    .line 128
    .line 129
    if-ne v0, p3, :cond_3

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    iget-object p3, v1, Lcom/join/mgps/dialog/f$d$a;->a:Landroid/widget/TextView;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dto/GameConfig;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_name()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, v1, Lcom/join/mgps/dialog/f$d$a;->a:Landroid/widget/TextView;

    .line 144
    .line 145
    const p3, 0x7f080fd1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
