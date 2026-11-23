.class public Lcom/join/mgps/dialog/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/i$c;,
        Lcom/join/mgps/dialog/i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/ListView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Lcom/join/mgps/dialog/i$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/dialog/i$c;)V
    .locals 0
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
    iput-object p2, p0, Lcom/join/mgps/dialog/i;->g:Lcom/join/mgps/dialog/i$c;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/i;->b:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/i;->e(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/i;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dialog/i;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/join/mgps/dialog/i;->g(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/i;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x4000000

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic g(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/dialog/i;->g:Lcom/join/mgps/dialog/i$c;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/join/mgps/dialog/i$c;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/i;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Lcom/join/mgps/dialog/i$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/i;->g:Lcom/join/mgps/dialog/i$c;

    .line 2
    .line 3
    return-object v0
.end method

.method e(Landroid/app/Activity;)V
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
    iput-object v0, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

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
    iget-object v1, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

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
    new-instance v1, Lcom/join/mgps/dialog/i$a;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/i$a;-><init>(Lcom/join/mgps/dialog/i;)V

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
    iput-object v0, p0, Lcom/join/mgps/dialog/i;->c:Landroid/widget/ListView;

    .line 75
    .line 76
    const v0, 0x7f0a1142

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/join/mgps/dialog/i;->d:Landroid/view/View;

    .line 84
    .line 85
    const v0, 0x7f0a1a4e

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/dialog/i;->f:Landroid/widget/TextView;

    .line 95
    .line 96
    const v0, 0x7f0a1841

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/join/mgps/dialog/i;->e:Landroid/view/View;

    .line 104
    .line 105
    new-instance v1, Lcom/join/mgps/dialog/h;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/h;-><init>(Lcom/join/mgps/dialog/i;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v1, -0x1

    .line 129
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 130
    .line 131
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 132
    .line 133
    const/16 v0, 0x11

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public h(Ljava/util/List;Z)V
    .locals 2
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
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dialog/i;->d:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/dialog/i;->c:Landroid/widget/ListView;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/dialog/i;->c:Landroid/widget/ListView;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/dialog/i$b;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/i$b;-><init>(Lcom/join/mgps/dialog/i;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/mgps/dialog/i;->c:Landroid/widget/ListView;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/dialog/g;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/g;-><init>(Lcom/join/mgps/dialog/i;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/i;->d:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/dialog/i;->c:Landroid/widget/ListView;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/dialog/i;->f:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string p2, "\u63d0\u793a"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public i(Lcom/join/mgps/dialog/i$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onItemClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/i;->g:Lcom/join/mgps/dialog/i$c;

    .line 2
    .line 3
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/i;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
