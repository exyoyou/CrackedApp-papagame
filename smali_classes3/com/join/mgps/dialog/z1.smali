.class public Lcom/join/mgps/dialog/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/join/mgps/activity/posting/PostingActivity$m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V
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
    iput-object p2, p0, Lcom/join/mgps/dialog/z1;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/z1;->c(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/z1;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/z1;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

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
            0x0
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
    iput-object v0, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

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
    iget-object v1, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

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
    move-result-object v0

    .line 42
    const v1, 0x7f0d0213

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const v1, 0x7f0a19f1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lcom/join/mgps/dialog/z1$a;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/z1$a;-><init>(Lcom/join/mgps/dialog/z1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a193e

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lcom/join/mgps/dialog/z1$b;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/z1$b;-><init>(Lcom/join/mgps/dialog/z1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    const v1, 0x7f0a19bc

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lcom/join/mgps/dialog/z1$c;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/z1$c;-><init>(Lcom/join/mgps/dialog/z1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v2, -0x1

    .line 111
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    .line 113
    const/high16 v2, 0x43260000    # 166.0f

    .line 114
    .line 115
    invoke-static {p1, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    .line 121
    const/16 p1, 0x50

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/z1;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
