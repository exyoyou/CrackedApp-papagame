.class public Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;,
        Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;,
        Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;
    }
.end annotation


# instance fields
.field private a:Z

.field public b:Z

.field public c:Z

.field private d:Landroid/view/View;

.field private e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

.field private f:Lcom/kongzue/dialogx/interfaces/BaseDialog;

.field g:Landroid/view/View$OnLayoutChangeListener;

.field h:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

.field private i:I

.field private j:Z

.field private k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->a:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->a:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->b:Z

    .line 8
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->c:Z

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 10
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 11
    instance-of p2, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    if-eqz p2, :cond_0

    .line 12
    check-cast p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->f:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->n()V

    return-void
.end method

.method private synthetic A(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->a:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-object p3

    .line 6
    :cond_0
    new-instance p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3, p2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->s(Landroidx/core/view/WindowInsetsCompat;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 12
    .line 13
    .line 14
    return-object p3
.end method

.method public static synthetic a(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->A(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Landroidx/core/view/WindowInsetsCompat;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->s(Landroidx/core/view/WindowInsetsCompat;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->t()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->r()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic f(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->m(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->f:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->X()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method static synthetic h(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->i:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->j:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;

    .line 29
    .line 30
    invoke-direct {v2, p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$e;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->h:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->m(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private m(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 7
    .line 8
    sget-object v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->Start:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 9
    .line 10
    invoke-interface {v0, v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v1, v0

    .line 15
    iput v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 16
    .line 17
    iget v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 20
    .line 21
    sget-object v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->Top:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    iput v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 29
    .line 30
    iget v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 33
    .line 34
    sget-object v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->End:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 35
    .line 36
    invoke-interface {v1, v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    iput v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 42
    .line 43
    iget v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 46
    .line 47
    sget-object v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->Bottom:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 48
    .line 49
    invoke-interface {v1, v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    iput v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "    KONGZUE DEBUG DIALOGX FitSystemBarUtils callBack: left="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " top="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " right="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " bottom="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " specialMode="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->j:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, " specialModeImeHeight="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->i:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 134
    .line 135
    iget v1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 136
    .line 137
    iget v2, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 138
    .line 139
    iget v3, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 140
    .line 141
    iget p1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 142
    .line 143
    iget-boolean v4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->j:Z

    .line 144
    .line 145
    if-eqz v4, :cond_1

    .line 146
    .line 147
    iget v4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->i:I

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    const/4 v4, 0x0

    .line 151
    :goto_0
    add-int/2addr p1, v4

    .line 152
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->a(IIII)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public static o(Landroid/view/View;)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->p(Landroid/view/View;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static p(Landroid/view/View;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static q(Landroid/view/View;ZZZZ)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;-><init>(ZZZZ)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->p(Landroid/view/View;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private r()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-ne v2, v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eq v0, v2, :cond_2

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-eq v0, v3, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    return v2

    .line 42
    :cond_2
    const/4 v0, -0x1

    .line 43
    return v0

    .line 44
    :cond_3
    return v1
.end method

.method private s(Landroidx/core/view/WindowInsetsCompat;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    if-eqz p1, :cond_12

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_0
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->h:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->b:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    or-int/2addr v5, v6

    .line 54
    invoke-virtual {p1, v5}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget v6, v5, Landroidx/core/graphics/Insets;->left:I

    .line 59
    .line 60
    iget v7, v5, Landroidx/core/graphics/Insets;->right:I

    .line 61
    .line 62
    iget-object v8, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v10, 0x1e

    .line 75
    .line 76
    const/4 v11, 0x1

    .line 77
    if-ge v9, v10, :cond_3

    .line 78
    .line 79
    and-int/lit8 v12, v8, 0x4

    .line 80
    .line 81
    if-nez v12, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v12, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_1
    const/4 v12, 0x1

    .line 87
    :goto_2
    if-ge v9, v10, :cond_5

    .line 88
    .line 89
    and-int/lit8 v8, v8, 0x2

    .line 90
    .line 91
    if-nez v8, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const/4 v8, 0x0

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    :goto_3
    const/4 v8, 0x1

    .line 97
    :goto_4
    if-eqz v8, :cond_7

    .line 98
    .line 99
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    invoke-virtual {p1, v8}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_6

    .line 108
    .line 109
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    invoke-virtual {p1, v8}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_7

    .line 118
    .line 119
    :cond_6
    iget v8, v5, Landroidx/core/graphics/Insets;->bottom:I

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    const/4 v8, 0x0

    .line 123
    :goto_5
    if-eqz v12, :cond_8

    .line 124
    .line 125
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {p1, v9}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    iget p1, v5, Landroidx/core/graphics/Insets;->top:I

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    const/4 p1, 0x0

    .line 139
    :goto_6
    invoke-direct {p0, v5}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->z(Landroidx/core/graphics/Insets;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_a

    .line 144
    .line 145
    const-string p1, "    FitSystemBarUtils: isWrongInsets try special mode..."

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->r()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "    FitSystemBarUtils: deviceOrientation = "

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    if-eq p1, v11, :cond_9

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->w()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 181
    .line 182
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->v()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_9
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->w()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 194
    .line 195
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->v()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 200
    .line 201
    :goto_7
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k()V

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_a
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->j:Z

    .line 206
    .line 207
    iget-object v5, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 208
    .line 209
    sget-object v9, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->Top:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 210
    .line 211
    invoke-interface {v5, v9}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_b

    .line 216
    .line 217
    iget v5, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 218
    .line 219
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    add-int/2addr v5, p1

    .line 224
    iput v5, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 225
    .line 226
    :cond_b
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 227
    .line 228
    sget-object v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->Bottom:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 229
    .line 230
    invoke-interface {p1, v2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_c

    .line 235
    .line 236
    iget p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 237
    .line 238
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    add-int/2addr p1, v0

    .line 243
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 244
    .line 245
    :cond_c
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 246
    .line 247
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-ne p1, v11, :cond_d

    .line 252
    .line 253
    const/4 v1, 0x1

    .line 254
    :cond_d
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 255
    .line 256
    sget-object v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->Start:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 257
    .line 258
    invoke-interface {p1, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_f

    .line 263
    .line 264
    if-eqz v1, :cond_e

    .line 265
    .line 266
    iget p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 267
    .line 268
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    add-int/2addr p1, v0

    .line 273
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_e
    iget p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 277
    .line 278
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    add-int/2addr p1, v0

    .line 283
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 284
    .line 285
    :cond_f
    :goto_8
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 286
    .line 287
    sget-object v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;->End:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;

    .line 288
    .line 289
    invoke-interface {p1, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;->c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_11

    .line 294
    .line 295
    if-eqz v1, :cond_10

    .line 296
    .line 297
    iget p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 298
    .line 299
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    add-int/2addr p1, v0

    .line 304
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_10
    iget p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 308
    .line 309
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    add-int/2addr p1, v0

    .line 314
    iput p1, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 315
    .line 316
    :cond_11
    :goto_9
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->m(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 317
    .line 318
    .line 319
    :cond_12
    :goto_a
    return-void
.end method

.method private t()I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method private u()Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private v()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1e

    .line 18
    .line 19
    if-lt v0, v2, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Landroidx/core/view/z;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/core/view/t2;->a(Landroid/view/WindowInsetsController;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    and-int/lit8 v0, v0, 0x10

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string v0, "getNavigationBarHeight =0"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_2
    const-string v2, "dimen"

    .line 76
    .line 77
    const-string v3, "android"

    .line 78
    .line 79
    const-string v4, "navigation_bar_height"

    .line 80
    .line 81
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-lez v2, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :cond_5
    :goto_3
    return v1
.end method

.method private w()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1e

    .line 18
    .line 19
    if-lt v0, v2, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Landroidx/core/view/z;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/core/view/t2;->a(Landroid/view/WindowInsetsController;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    and-int/lit16 v0, v0, 0x2000

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    const-string v2, "dimen"

    .line 71
    .line 72
    const-string v3, "android"

    .line 73
    .line 74
    const-string v4, "status_bar_height"

    .line 75
    .line 76
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-lez v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :cond_5
    :goto_3
    return v1
.end method

.method private x()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0x400

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    and-int/lit8 v0, v0, 0x4

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return v3

    .line 42
    :cond_2
    return v1
.end method

.method private z(Landroidx/core/graphics/Insets;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroidx/core/graphics/Insets;->top:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method


# virtual methods
.method protected B(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->s:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-boolean p1, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->u()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->e:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->f:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 28
    .line 29
    return-void
.end method

.method public n()V
    .locals 5

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 16
    .line 17
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 31
    .line 32
    new-instance v2, Lcom/kongzue/dialogx/util/views/d;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0}, Lcom/kongzue/dialogx/util/views/d;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 38
    .line 39
    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x1e

    .line 43
    .line 44
    if-lt v1, v2, :cond_0

    .line 45
    .line 46
    const-string v1, "FitSystemBarUtils: setWindowInsetsAnimationCallback"

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 52
    .line 53
    new-instance v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-direct {v2, p0, v3, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;ILcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    const-string v0, "FitSystemBarUtils: AttachedToWindow ok"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 76
    .line 77
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string v1, "FitSystemBarUtils: wait AttachedToWindow"

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->d:Landroid/view/View;

    .line 87
    .line 88
    new-instance v2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 89
    .line 90
    invoke-direct {v2, p0, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->a:Z

    .line 2
    .line 3
    return v0
.end method
