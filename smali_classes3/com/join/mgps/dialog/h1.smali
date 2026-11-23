.class public Lcom/join/mgps/dialog/h1;
.super Lcom/join/mgps/dialog/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/h1$a;
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:I = 0x3

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/ProgressBar;

.field q:Landroid/widget/LinearLayout;

.field r:Landroid/widget/ImageView;

.field s:Lcom/join/mgps/dialog/h1$a;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Z

.field x:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f13015d

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/p;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/dialog/h1;->t:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/join/mgps/dialog/h1;->v:I

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/dialog/h1;->w:Z

    .line 14
    .line 15
    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->q:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 15
    .line 16
    const-string v1, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v1, "\u5ffd\u7565"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 29
    .line 30
    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 36
    .line 37
    const v1, 0x7f0803a9

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->q:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->o:Landroid/widget/TextView;

    .line 15
    .line 16
    const-string v1, "\u7b49\u5f85\u4e2d"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v2, "\u540e\u53f0\u4e0b\u8f7d"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 34
    .line 35
    const v1, 0x7f0803ab

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    const v0, 0x7f0a19c5

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a19c6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a19ca

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a19c7

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->n:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a1239

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ProgressBar;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->p:Landroid/widget/ProgressBar;

    .line 55
    .line 56
    const v0, 0x7f0a0f12

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->q:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a19c9

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->o:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    const v0, 0x7f0a19c6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a0a22

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/dialog/h1;->r:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->r:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a0328

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f0a0326

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/dialog/h1;->x:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 52
    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    const-string v2, "\u7a33\u5b9a\u6d41\u7545"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0809a4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v2, "\u4e91\u5b58\u6863"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f08099b

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->q:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->o:Landroid/widget/TextView;

    .line 15
    .line 16
    const-string v1, "\u4e0b\u8f7d\u4e2d"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v1, "\u540e\u53f0\u4e0b\u8f7d"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 29
    .line 30
    const-string v1, "\u6682\u505c"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 36
    .line 37
    const v1, 0x7f0803ab

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private z(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isModMainGame"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->q:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v0, "\u542f\u52a8\u6807\u51c6\u7248\u9700\u5b89\u88c5\u6e38\u620f\u81f3\u672c\u5730"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v0, "\u542f\u52a8\u589e\u5f3a\u7248\u9700\n\u5b89\u88c5\u6e38\u620f\u81f3\u865a\u62df\u673a"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string v0, "\u53d6\u6d88"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/join/mgps/dialog/h1;->w:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 43
    .line 44
    const-string v0, "\u4e00\u952e\u5bfc\u5165"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f0803a9

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public C(IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "isModMainGame",
            "hasVersion"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/h1;->t:I

    .line 2
    .line 3
    const v0, 0x7f0d0202

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    if-eq p1, p2, :cond_2

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    const p3, 0x7f0d0201

    .line 13
    .line 14
    .line 15
    if-eq p1, p2, :cond_1

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setContentView(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->m()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->B()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setContentView(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->m()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->y()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->m()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->A()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iput-boolean p3, p0, Lcom/join/mgps/dialog/h1;->w:Z

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->m()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p2}, Lcom/join/mgps/dialog/h1;->z(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const p1, 0x7f0d0203

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/join/mgps/dialog/h1;->n()V

    .line 73
    .line 74
    .line 75
    if-eqz p3, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 78
    .line 79
    const-string p2, "\u4e00\u952e\u5bfc\u5165"

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 86
    .line 87
    const-string p2, "\u7acb\u5373\u5b89\u88c5"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object p2, Lcom/papa/sim/statistic/Event;->modDownloadTip:Lcom/papa/sim/statistic/Event;

    .line 101
    .line 102
    new-instance p3, Lcom/papa/sim/statistic/Ext;

    .line 103
    .line 104
    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->u:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/join/mgps/dialog/h1;->v:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ""

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-void
.end method

.method public D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->p:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    long-to-int v2, v1

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    mul-double v0, v0, v2

    .line 27
    .line 28
    mul-double v0, v0, v2

    .line 29
    .line 30
    double-to-long v0, v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "updateStatus: "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    filled-new-array {v2}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/dialog/h1;->n:Landroid/widget/TextView;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, "/"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const/4 v0, 0x2

    .line 101
    const v1, 0x7f0803ab

    .line 102
    .line 103
    .line 104
    const-string v2, "\u6682\u505c"

    .line 105
    .line 106
    if-eq p1, v0, :cond_2

    .line 107
    .line 108
    const/4 v0, 0x3

    .line 109
    if-eq p1, v0, :cond_1

    .line 110
    .line 111
    const/16 v0, 0xa

    .line 112
    .line 113
    if-eq p1, v0, :cond_0

    .line 114
    .line 115
    const/16 v0, 0x1b

    .line 116
    .line 117
    if-eq p1, v0, :cond_1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->o:Landroid/widget/TextView;

    .line 121
    .line 122
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->o:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 144
    .line 145
    const-string v0, "\u7ee7\u7eed"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 151
    .line 152
    const v0, 0x7f0803a9

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->o:Landroid/widget/TextView;

    .line 160
    .line 161
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dialog/h1;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a19c5

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->s:Lcom/join/mgps/dialog/h1$a;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/h1$a;->b(Lcom/join/mgps/dialog/h1;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x7f0a19c6

    .line 19
    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->s:Lcom/join/mgps/dialog/h1$a;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/h1$a;->a(Lcom/join/mgps/dialog/h1;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v0, 0x7f0a0a22

    .line 32
    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/dialog/h1;->s:Lcom/join/mgps/dialog/h1$a;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/h1$a;->b(Lcom/join/mgps/dialog/h1;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    return-void
.end method

.method public p(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archive_local_path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h1;->x:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->m:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h1;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(Lcom/join/mgps/dialog/h1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iOptsClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h1;->s:Lcom/join/mgps/dialog/h1$a;

    .line 2
    .line 3
    return-void
.end method

.method public v(I)V
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
    iput p1, p0, Lcom/join/mgps/dialog/h1;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public w(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h1;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
