.class public Lcom/join/mgps/adapter/ForumPostsAdapter$a0;
.super Lcom/join/mgps/customview/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a0"
.end annotation


# static fields
.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3


# instance fields
.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field final synthetic o:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->c()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d06aa

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0a02a1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->d:Landroid/view/View;

    .line 23
    .line 24
    const v1, 0x7f0a02a0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 32
    .line 33
    const v1, 0x7f0a04e8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->f:Landroid/view/View;

    .line 41
    .line 42
    const v1, 0x7f0a029f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->g:Landroid/view/View;

    .line 50
    .line 51
    const v1, 0x7f0a04e7

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->h:Landroid/view/View;

    .line 59
    .line 60
    const v1, 0x7f0a02a2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->i:Landroid/view/View;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->d:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->g:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->i:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, -0x2

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k:I

    .line 2
    .line 3
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/h;->dismiss()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k:I

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->l:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->m:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k:I

    .line 2
    .line 3
    return v0
.end method

.method l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->n:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->i(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x2

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 39
    .line 40
    iget v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k:I

    .line 41
    .line 42
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->l:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0, v1, v2, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->k(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "clipboard"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/content/ClipboardManager;

    .line 19
    .line 20
    const-string v1, "wufan"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->m:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->m:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f\uff01"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->n:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->d(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k:I

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->h(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->n:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->j(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->k:I

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->f(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
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
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->o()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->n()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->m()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->l()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x7f0a029f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->d:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->g:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->i:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public r(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public s(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f070ed1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v1, v0}, Lcom/join/mgps/customview/h;->showAsDropDown(Landroid/view/View;II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/customview/h;->b()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public t(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->e:Landroid/view/View;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delete"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->d:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public v(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->d:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->f:Landroid/view/View;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->f:Landroid/view/View;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public w(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventFlag"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mssage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method z(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->i:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->h:Landroid/view/View;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->h:Landroid/view/View;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
