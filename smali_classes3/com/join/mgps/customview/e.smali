.class public Lcom/join/mgps/customview/e;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/e$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private p:I

.field q:Lcom/join/mgps/rpc/i;

.field private r:[Ljava/lang/Object;

.field private s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field t:Lcom/join/mgps/customview/e$d;

.field private u:Lcom/join/mgps/dialog/x0;

.field private v:I

.field w:Z

.field x:Z

.field y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/e;->k:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/e;->l:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lcom/join/mgps/customview/e;->m:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iput v1, p0, Lcom/join/mgps/customview/e;->n:I

    .line 15
    .line 16
    const/16 v1, 0x63

    .line 17
    .line 18
    iput v1, p0, Lcom/join/mgps/customview/e;->o:I

    .line 19
    .line 20
    iput v0, p0, Lcom/join/mgps/customview/e;->p:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/customview/e;->q:Lcom/join/mgps/rpc/i;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7f0d068d

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const v0, 0x7f070eb6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 67
    .line 68
    .line 69
    const/4 p1, -0x2

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->o()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->h()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/e;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->r:[Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/e;->v:I

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto :goto_0

    .line 12
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->f()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->k()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->e()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->c()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->dismiss()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_6
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->d()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x7f0a05cb
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a05d3

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 13
    .line 14
    const v1, 0x7f0a05cf

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 24
    .line 25
    const v1, 0x7f0a05cb

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 35
    .line 36
    const v1, 0x7f0a05d1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 46
    .line 47
    const v1, 0x7f0a05d2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 57
    .line 58
    const v1, 0x7f0a05ce

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 68
    .line 69
    const v1, 0x7f0a05cd

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/join/mgps/customview/e;->j:Landroid/view/View;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/customview/e;->j:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/customview/e$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/e$a;-><init>(Lcom/join/mgps/customview/e;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/customview/e;->v:I

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    return-void

    .line 10
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/join/mgps/Util/r0;->H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_2
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u4e3e\u62a5\u5417\uff1f"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    const-string v0, "\u786e\u5b9a\u8981\u56de\u590d\u5417\uff1f"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->e()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_5
    const-string v0, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    const-string v0, "\u786e\u5b9a\u8981\u53d6\u6d88\u7cbe\u534e\u5417\uff1f"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u7cbe\u534e\u5417\uff1f"

    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/dialog/x0;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 64
    .line 65
    const-string v2, "\u786e\u5b9a"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/x0;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 71
    .line 72
    const-string v2, "\u53d6\u6d88"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/x0;->d(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 78
    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/x0;->b(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lcom/join/mgps/customview/e$b;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/e$b;-><init>(Lcom/join/mgps/customview/e;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 99
    .line 100
    new-instance v1, Lcom/join/mgps/customview/e$c;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/e$c;-><init>(Lcom/join/mgps/customview/e;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/customview/e;->u:Lcom/join/mgps/dialog/x0;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f0a05cb
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method c()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/mgps/customview/e;->q:Lcom/join/mgps/rpc/i;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/i;->I(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/e;->i(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_0
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/customview/e;->i(IZ)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_1
    return-void
.end method

.method d()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    move-object v2, v3

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v3, :cond_e

    .line 38
    .line 39
    const v3, 0x7f120135

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f120142

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    new-instance v6, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const-string v9, ""

    .line 83
    .line 84
    invoke-direct {v6, v7, v5, v8, v9}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v5, p0, Lcom/join/mgps/customview/e;->q:Lcom/join/mgps/rpc/i;

    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-interface {v5, v6}, Lcom/join/mgps/rpc/i;->u0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_a

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    const/16 v0, 0x2bd

    .line 106
    .line 107
    if-eq v6, v0, :cond_3

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_3
    const v0, 0x7f120141

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;

    .line 126
    .line 127
    if-eqz v5, :cond_9

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->isResult()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_8

    .line 134
    .line 135
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getBest()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-ne v5, v0, :cond_5

    .line 140
    .line 141
    const/4 v5, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    const/4 v5, 0x0

    .line 144
    :goto_1
    if-eqz v5, :cond_6

    .line 145
    .line 146
    const v6, 0x7f120136

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {p0, v6}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    const v6, 0x7f120137

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {p0, v6}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    if-eqz v5, :cond_7

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    const/4 v0, 0x0

    .line 171
    :goto_3
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_8
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_9
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_a
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 209
    .line 210
    if-eqz v0, :cond_d

    .line 211
    .line 212
    invoke-interface {v0, v2}, Lcom/join/mgps/customview/e$d;->e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    goto :goto_6

    .line 218
    :catch_1
    move-exception v0

    .line 219
    :try_start_3
    iget-object v5, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 220
    .line 221
    if-eqz v5, :cond_c

    .line 222
    .line 223
    invoke-interface {v5, v2}, Lcom/join/mgps/customview/e$d;->e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .line 235
    .line 236
    :cond_d
    :goto_5
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :goto_6
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 240
    .line 241
    throw v0

    .line 242
    :cond_e
    const v0, 0x7f12031e

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 253
    .line 254
    :goto_7
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/customview/e$d;->onCancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 9
    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method e()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    move-object v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :catch_0
    move-exception v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v3, :cond_a

    .line 33
    .line 34
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const/4 v3, 0x1

    .line 53
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 54
    .line 55
    const v3, 0x7f120139

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    const v0, 0x7f120142

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    new-instance v6, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-direct {v6, v7, v5, v8, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->z()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, "_"

    .line 126
    .line 127
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->setApp_ver(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/customview/e;->q:Lcom/join/mgps/rpc/i;

    .line 141
    .line 142
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-interface {v0, v5}, Lcom/join/mgps/rpc/i;->F(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_4

    .line 157
    .line 158
    const/16 v0, 0x2bd

    .line 159
    .line 160
    if-eq v5, v0, :cond_3

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    const v0, 0x7f120141

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;

    .line 179
    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_5

    .line 194
    .line 195
    const v5, 0x7f12013a

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    const v5, 0x7f120138

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v5, v0}, Lcom/join/mgps/Util/r0;->f1(IZ)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_6
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_7
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 244
    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    invoke-interface {v0, v2}, Lcom/join/mgps/customview/e$d;->c(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    goto :goto_4

    .line 253
    :catch_1
    move-exception v0

    .line 254
    :try_start_3
    iget-object v5, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 255
    .line 256
    if-eqz v5, :cond_8

    .line 257
    .line 258
    invoke-interface {v5, v2}, Lcom/join/mgps/customview/e$d;->c(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 259
    .line 260
    .line 261
    :cond_8
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    .line 270
    .line 271
    :cond_9
    :goto_3
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :goto_4
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 275
    .line 276
    throw v0

    .line 277
    :cond_a
    const v0, 0x7f12031e

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 288
    .line 289
    :goto_5
    return-void
.end method

.method f()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    move-object v1, v2

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v2, :cond_a

    .line 38
    .line 39
    const v2, 0x7f12013b

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const v4, 0x7f120142

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v5, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const-string v8, ""

    .line 83
    .line 84
    invoke-direct {v5, v6, v4, v7, v8}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lcom/join/mgps/customview/e;->q:Lcom/join/mgps/rpc/i;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v4, v5}, Lcom/join/mgps/rpc/i;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    const/16 v4, 0x2bd

    .line 106
    .line 107
    if-eq v5, v4, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const v4, 0x7f120141

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;

    .line 126
    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;->isResult()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    const v4, 0x7f12013c

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 170
    .line 171
    if-eqz v4, :cond_9

    .line 172
    .line 173
    invoke-interface {v4, v1}, Lcom/join/mgps/customview/e$d;->b(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    goto :goto_3

    .line 179
    :catch_1
    move-exception v4

    .line 180
    :try_start_3
    iget-object v5, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 181
    .line 182
    if-eqz v5, :cond_8

    .line 183
    .line 184
    invoke-interface {v5, v1}, Lcom/join/mgps/customview/e$d;->b(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .line 196
    .line 197
    :cond_9
    :goto_2
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :goto_3
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 201
    .line 202
    throw v0

    .line 203
    :cond_a
    const v1, 0x7f12031e

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->y:Z

    .line 214
    .line 215
    :goto_4
    return-void
.end method

.method i(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pid",
            "success"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\u5220\u9664\u6210\u529f"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "\u5220\u9664\u5931\u8d25"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/customview/e$d;->d(IZ)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a05d0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "\u53d6\u6d88\u6536\u85cf"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "\u6536\u85cf"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 30
    .line 31
    const v1, 0x7f0a05cc

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v1, 0x1

    .line 45
    if-ne p1, v1, :cond_1

    .line 46
    .line 47
    const-string p1, "\u53d6\u6d88\u7cbe\u534e"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string p1, "\u7cbe\u534e"

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {v0, v1}, Lcom/join/mgps/customview/e$d;->a(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public l([Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/customview/e;->r:[Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    aget-object p1, p1, v1

    .line 11
    .line 12
    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/e;->j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq p1, v2, :cond_5

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq p1, v2, :cond_4

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq p1, v2, :cond_3

    .line 38
    .line 39
    const/16 v2, 0x63

    .line 40
    .line 41
    if-eq p1, v2, :cond_2

    .line 42
    .line 43
    iput v1, p0, Lcom/join/mgps/customview/e;->p:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iput v2, p0, Lcom/join/mgps/customview/e;->p:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/e;->p:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/e;->p:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iput v2, p0, Lcom/join/mgps/customview/e;->p:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iput v1, p0, Lcom/join/mgps/customview/e;->p:I

    .line 59
    .line 60
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/e;->p:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/e;->n(I)I

    .line 63
    .line 64
    .line 65
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return v0
.end method

.method public m(Lcom/join/mgps/customview/e$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/customview/e$d;

    .line 2
    .line 3
    return-void
.end method

.method public n(I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/e;->p:I

    .line 2
    .line 3
    const/4 p1, 0x5

    .line 4
    new-array v0, p1, [Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x1

    .line 19
    aput-object v3, v0, v4

    .line 20
    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v0, v2

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    aput-object v5, v0, v3

    .line 33
    .line 34
    const/16 v5, 0x63

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v6, 0x4

    .line 41
    aput-object v5, v0, v6

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v5, p0, Lcom/join/mgps/customview/e;->p:I

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iput v1, p0, Lcom/join/mgps/customview/e;->p:I

    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/customview/e;->j:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    .line 97
    .line 98
    const/16 v5, 0x8

    .line 99
    .line 100
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget v0, p0, Lcom/join/mgps/customview/e;->p:I

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    if-eq v0, v4, :cond_5

    .line 108
    .line 109
    if-eq v0, v2, :cond_4

    .line 110
    .line 111
    if-eq v0, v3, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object v2, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ne v0, v2, :cond_2

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    :cond_2
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    :goto_0
    const/4 p1, 0x6

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    .line 166
    .line 167
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    :goto_1
    const/4 p1, 0x4

    .line 182
    :goto_2
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
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
    move-result v0

    .line 5
    const v1, 0x7f0a05cd

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->dismiss()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/join/mgps/customview/e;->v:I

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->q()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public varargs p(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "args"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/e;->l([Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    const p2, 0x7f130545

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v0, 0x7f070eb4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 30
    .line 31
    check-cast p2, Landroid/app/Activity;

    .line 32
    .line 33
    const v0, 0x1020002

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/16 v0, 0x11

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p2, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const v0, 0x3e99999a    # 0.3f

    .line 55
    .line 56
    .line 57
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
