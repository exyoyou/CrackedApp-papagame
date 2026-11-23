.class public Lcom/join/mgps/customview/CustomerDownloadView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/String; = "CustomerDownloadView"

.field private static final r:I = 0x12

.field private static final s:I = 0x12

.field private static final t:I = 0x5

.field private static final u:I = 0x5

.field private static final v:I = 0x1c

.field private static final w:I = 0x5


# instance fields
.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field private h:F

.field i:Landroid/view/View;

.field j:Landroid/content/Context;

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:F

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->k:I

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->l:I

    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomerDownloadView;->b(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->j:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const p2, 0x7f0d08a2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/view/View;

    .line 33
    .line 34
    const p2, 0x7f0a0529

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/view/View;

    .line 46
    .line 47
    const p2, 0x7f0a052a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/ImageView;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->f:Landroid/widget/ImageView;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/view/View;

    .line 59
    .line 60
    const p2, 0x7f0a052d

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/view/View;

    .line 72
    .line 73
    const p2, 0x7f0a052c

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/view/View;

    .line 85
    .line 86
    const p2, 0x7f0a052b

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/ImageView;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/view/View;

    .line 98
    .line 99
    const p2, 0x7f0a052e

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/ImageView;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:Landroid/widget/ImageView;

    .line 109
    .line 110
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/q;->g()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public setDownloadGameNum()V
    .locals 4

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/utils/DlTaskManager;->getDownloadingNum()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/utils/DlTaskManager;->getDownloadedNum()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x63

    .line 30
    .line 31
    if-ge v1, v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v1, "99+"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-lez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public setDownloadIconRepeatCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadIconRes(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setDownloadIconSize(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    int-to-float p1, p1

    .line 10
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:F

    .line 11
    .line 12
    mul-float p1, p1, v1

    .line 13
    .line 14
    float-to-int p1, p1

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->m:I

    .line 16
    .line 17
    int-to-float p2, p2

    .line 18
    mul-float p2, p2, v1

    .line 19
    .line 20
    float-to-int p2, p2

    .line 21
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->n:I

    .line 22
    .line 23
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 24
    .line 25
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setDownloadLineRes(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDownloadLineSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    .line 17
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 18
    .line 19
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 20
    .line 21
    int-to-float p1, p1

    .line 22
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:F

    .line 23
    .line 24
    mul-float p1, p1, v1

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setDownloadNumFontColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorRes"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDownloadNumFontSize(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDownloadNumTextViewSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    return-void
.end method
