.class Lcom/join/mgps/dialog/y1$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/y1$d$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/y1;


# direct methods
.method private constructor <init>(Lcom/join/mgps/dialog/y1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$d;->b:Lcom/join/mgps/dialog/y1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/dialog/y1;Lcom/join/mgps/dialog/y1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/y1$d;-><init>(Lcom/join/mgps/dialog/y1;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/y1$d;->b:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/dialog/y1;->a(Lcom/join/mgps/dialog/y1;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
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
    iget-object v0, p0, Lcom/join/mgps/dialog/y1$d;->b:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/dialog/y1;->a(Lcom/join/mgps/dialog/y1;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d0471

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/dialog/y1$d$a;

    .line 20
    .line 21
    invoke-direct {p3, p0}, Lcom/join/mgps/dialog/y1$d$a;-><init>(Lcom/join/mgps/dialog/y1$d;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a1a5d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Lcom/join/mgps/dialog/y1$d$a;

    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/y1$d;->b:Lcom/join/mgps/dialog/y1;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/join/mgps/dialog/y1;->a(Lcom/join/mgps/dialog/y1;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/join/mgps/dialog/y1$c;

    .line 56
    .line 57
    iget-object v0, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget v2, p1, Lcom/join/mgps/dialog/y1$c;->a:I

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "\n\u94dc\u677f"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget v0, p1, Lcom/join/mgps/dialog/y1$c;->a:I

    .line 82
    .line 83
    mul-int/lit8 v0, v0, 0x2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/dialog/y1$d;->b:Lcom/join/mgps/dialog/y1;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/join/mgps/dialog/y1;->b(Lcom/join/mgps/dialog/y1;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-le v0, v1, :cond_1

    .line 92
    .line 93
    iget-object p1, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 94
    .line 95
    const-string v0, "#a8a8a8"

    .line 96
    .line 97
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 105
    .line 106
    const p3, 0x7f08029f

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dialog/y1$c;->a()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    iget-object p1, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 120
    .line 121
    const/4 v0, -0x1

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 126
    .line 127
    const p3, 0x7f080235

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 135
    .line 136
    const-string v0, "#3CA4FD"

    .line 137
    .line 138
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p3, Lcom/join/mgps/dialog/y1$d$a;->a:Landroid/widget/TextView;

    .line 146
    .line 147
    const p3, 0x7f08029e

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    .line 152
    .line 153
    :goto_1
    return-object p2
.end method
