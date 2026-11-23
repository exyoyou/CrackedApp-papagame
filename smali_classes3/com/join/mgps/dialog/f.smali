.class public Lcom/join/mgps/dialog/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/f$c;,
        Lcom/join/mgps/dialog/f$d;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/ListView;

.field d:Lcom/join/mgps/fragment/roomlist/c$m;

.field e:I

.field f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/fragment/roomlist/c$m;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/dialog/f;->e:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/join/mgps/dialog/f;->f:I

    .line 9
    .line 10
    iput-object p2, p0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/dialog/f;->b:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/f;->c(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "type",
            "isElite"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/f$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/f$c;-><init>(Lcom/join/mgps/dialog/f;)V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Lcom/join/mgps/dialog/f$c;->b:I

    .line 7
    .line 8
    iput-object p1, v0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dto/GameConfig;

    .line 9
    .line 10
    iput-boolean p3, v0, Lcom/join/mgps/dialog/f$c;->c:Z

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method c(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f130584

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1c

    .line 14
    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const v0, 0x7f0d01b8

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const v0, 0x7f0a0a22

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/join/mgps/dialog/f$a;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/f$a;-><init>(Lcom/join/mgps/dialog/f;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a0e84

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/ListView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/dialog/f;->c:Landroid/widget/ListView;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, -0x1

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    .line 94
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    .line 96
    const/16 v0, 0x11

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public d(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "datas",
            "isElite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    iget v2, p0, Lcom/join/mgps/dialog/f;->f:I

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, v1, v2, v3}, Lcom/join/mgps/dialog/f;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/f$c;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x1

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/join/mgps/dto/GameConfig;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ne v5, v4, :cond_3

    .line 79
    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-lez p1, :cond_5

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 109
    .line 110
    iget v3, p0, Lcom/join/mgps/dialog/f;->f:I

    .line 111
    .line 112
    invoke-direct {p0, v1, v3, v4}, Lcom/join/mgps/dialog/f;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/f$c;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-lez p1, :cond_6

    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    iget v1, p0, Lcom/join/mgps/dialog/f;->e:I

    .line 128
    .line 129
    invoke-direct {p0, p1, v1, v4}, Lcom/join/mgps/dialog/f;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/f$c;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 151
    .line 152
    iget v2, p0, Lcom/join/mgps/dialog/f;->f:I

    .line 153
    .line 154
    invoke-direct {p0, v1, v2, v4}, Lcom/join/mgps/dialog/f;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/f$c;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/dialog/f;->c:Landroid/widget/ListView;

    .line 163
    .line 164
    new-instance v1, Lcom/join/mgps/dialog/f$d;

    .line 165
    .line 166
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/dialog/f$d;-><init>(Lcom/join/mgps/dialog/f;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/dialog/f;->c:Landroid/widget/ListView;

    .line 173
    .line 174
    new-instance v1, Lcom/join/mgps/dialog/f$b;

    .line 175
    .line 176
    invoke-direct {v1, p0, v0, p2}, Lcom/join/mgps/dialog/f$b;-><init>(Lcom/join/mgps/dialog/f;Ljava/util/List;Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_4
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
