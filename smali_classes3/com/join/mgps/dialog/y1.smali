.class public Lcom/join/mgps/dialog/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/y1$c;,
        Lcom/join/mgps/dialog/y1$d;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/GridView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dialog/y1$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/mgps/dialog/y1$d;

.field private f:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field private g:I


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
    invoke-direct {p0}, Lcom/join/mgps/dialog/y1;->e()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/join/mgps/dialog/y1;->f:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/y1;->f(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/y1;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/y1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/dialog/y1;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/y1;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/y1;->f:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 2
    .line 3
    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 31
    .line 32
    const/16 v2, 0xa

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 43
    .line 44
    const/16 v2, 0x1e

    .line 45
    .line 46
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 55
    .line 56
    const/16 v2, 0x32

    .line 57
    .line 58
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 67
    .line 68
    const/16 v2, 0x3c

    .line 69
    .line 70
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 77
    .line 78
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 79
    .line 80
    const/16 v2, 0x50

    .line 81
    .line 82
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 89
    .line 90
    new-instance v1, Lcom/join/mgps/dialog/y1$c;

    .line 91
    .line 92
    const/16 v2, 0x64

    .line 93
    .line 94
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$c;-><init>(Lcom/join/mgps/dialog/y1;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method f(Landroid/app/Activity;)V
    .locals 4
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
    const v1, 0x7f130585

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0d0212

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0a0a22

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Lcom/join/mgps/dialog/y1$a;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/y1$a;-><init>(Lcom/join/mgps/dialog/y1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a1949

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/join/mgps/dialog/y1;->b:Landroid/widget/TextView;

    .line 48
    .line 49
    const v1, 0x7f0a0fd9

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/GridView;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/join/mgps/dialog/y1;->c:Landroid/widget/GridView;

    .line 59
    .line 60
    new-instance v1, Lcom/join/mgps/dialog/y1$d;

    .line 61
    .line 62
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/y1$d;-><init>(Lcom/join/mgps/dialog/y1;Lcom/join/mgps/dialog/y1$a;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/join/mgps/dialog/y1;->e:Lcom/join/mgps/dialog/y1$d;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/dialog/y1;->c:Landroid/widget/GridView;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/dialog/y1;->c:Landroid/widget/GridView;

    .line 73
    .line 74
    new-instance v2, Lcom/join/mgps/dialog/y1$b;

    .line 75
    .line 76
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/dialog/y1$b;-><init>(Lcom/join/mgps/dialog/y1;Landroid/app/Activity;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Dialog;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Dialog;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, -0x1

    .line 98
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 99
    .line 100
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    .line 102
    const/16 v0, 0x11

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public g(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "selectedCoins"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/join/mgps/dialog/y1;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->b:Landroid/widget/TextView;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "\u5f53\u524d\u53ef\u7528\u94dc\u677f\u6570\uff1a<font color=#000000>"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "</font>"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ge p1, v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/dialog/y1$c;

    .line 59
    .line 60
    iget v0, v0, Lcom/join/mgps/dialog/y1$c;->a:I

    .line 61
    .line 62
    if-ne v0, p2, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p1, -0x1

    .line 69
    :goto_2
    if-ltz p1, :cond_2

    .line 70
    .line 71
    iget-object p2, p0, Lcom/join/mgps/dialog/y1;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/join/mgps/dialog/y1$c;

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/y1$c;->b(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/dialog/y1;->e:Lcom/join/mgps/dialog/y1$d;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
