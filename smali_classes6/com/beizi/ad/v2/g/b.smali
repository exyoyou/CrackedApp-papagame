.class public Lcom/beizi/ad/v2/g/b;
.super Lcom/beizi/ad/v2/a/b;
.source "SourceFile"


# instance fields
.field private H:Landroid/view/ViewGroup;

.field private I:Landroid/view/View;

.field private J:Lcom/beizi/ad/a;

.field private K:Landroid/os/CountDownTimer;

.field private L:Ljava/lang/String;

.field private M:Lcom/beizi/ad/model/i$f;

.field private N:I

.field private O:I

.field private P:Landroid/webkit/WebView;

.field private Q:Lcom/beizi/ad/v2/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p3, Lcom/beizi/ad/internal/f;->b:Lcom/beizi/ad/internal/f;

    .line 2
    .line 3
    invoke-direct {p0, p1, p4, p3}, Lcom/beizi/ad/v2/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic A(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/beizi/ad/v2/g/b;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/g/b;->K:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic D(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->E()V

    return-void
.end method

.method private E()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->M:Lcom/beizi/ad/model/i$f;

    .line 3
    .line 4
    sget-object v2, Lcom/beizi/ad/model/i$f;->c:Lcom/beizi/ad/model/i$f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    const-string v3, "http"

    .line 7
    .line 8
    if-ne v1, v2, :cond_2

    .line 9
    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    invoke-virtual {p0, v1}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->F()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    sget-object v2, Lcom/beizi/ad/model/i$f;->d:Lcom/beizi/ad/model/i$f;

    .line 40
    .line 41
    if-ne v1, v2, :cond_5

    .line 42
    .line 43
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const-string v1, "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n  <style>\n    html, body { width: 100%; height: 100%; margin: 0; padding: 0 }\n    .material-wrap { overflow: hidden; position: relative; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: cover }\n    .filter-shadow { content: \"\"; position: absolute; z-index: 2; top: -3%; left: -3%; right: -3%; bottom: -3%; background: inherit; filter: blur(10px) }\n    .material-wrap .black-shadow { position: absolute; z-index: 3; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0, 0, 0, .05) }\n    .material-wrap .material { position: absolute; z-index: 3; top: 0; left: 0; width: 100%; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: contain }\n  </style>\n</head>\n<body>\n  <div class=\"material-wrap\" style=\"background-image: url(\'__IMAGE_SRC_PATH__\')\">\n    <div class=\"filter-shadow\"></div>\n    <div class=\"black-shadow\"></div>\n    <div class=\"material\" style=\"background-image: url(\'__IMAGE_SRC_PATH__\')\"></div>\n  </div>\n</body>\n</html>\n"

    .line 64
    .line 65
    const-string v2, "__IMAGE_SRC_PATH__"

    .line 66
    .line 67
    iget-object v3, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 74
    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->G()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/g/b;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->E:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->C:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->I()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->J()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    :cond_1
    move-object v2, v1

    .line 42
    :catch_1
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v3, Lcom/beizi/ad/v2/g/b$3;

    .line 49
    .line 50
    invoke-direct {v3, p0, v2}, Lcom/beizi/ad/v2/g/b$3;-><init>(Lcom/beizi/ad/v2/g/b;Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v3}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private G()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/webkit/WebView;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/beizi/ad/internal/e/u;->a(Landroid/webkit/WebView;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->C:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->I()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->J()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    .line 47
    .line 48
    new-instance v1, Lcom/beizi/ad/v2/g/b$4;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/g/b$4;-><init>(Lcom/beizi/ad/v2/g/b;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    iget-object v4, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 60
    .line 61
    const-string v5, "text/html"

    .line 62
    .line 63
    const-string v6, "UTF-8"

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->I:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private I()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    const/16 v3, 0x11

    .line 28
    .line 29
    const/4 v4, -0x2

    .line 30
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->k()Lcom/beizi/ad/internal/d/a$a;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a$a;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v6, 0x0

    .line 51
    if-nez v5, :cond_1

    .line 52
    .line 53
    new-instance v5, Landroid/content/MutableContextWrapper;

    .line 54
    .line 55
    invoke-direct {v5, v0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    .line 66
    invoke-direct {v5, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    new-instance v5, Lcom/beizi/ad/v2/g/b$6;

    .line 76
    .line 77
    invoke-direct {v5, p0}, Lcom/beizi/ad/v2/g/b$6;-><init>(Lcom/beizi/ad/v2/g/b;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->j()Lcom/beizi/ad/internal/d/a$a;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a$a;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_2

    .line 98
    .line 99
    new-instance v5, Landroid/content/MutableContextWrapper;

    .line 100
    .line 101
    iget-object v7, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-direct {v5, v7}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v2}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    .line 118
    invoke-direct {v5, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .line 133
    const/4 v7, 0x5

    .line 134
    invoke-virtual {v5, v7, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 135
    .line 136
    .line 137
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 138
    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    iget-object v2, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 143
    .line 144
    check-cast v2, Landroid/widget/FrameLayout;

    .line 145
    .line 146
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .line 148
    const/16 v5, 0x55

    .line 149
    .line 150
    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 161
    .line 162
    const/high16 v3, 0x41400000    # 12.0f

    .line 163
    .line 164
    invoke-static {v0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {v2, v6, v6, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    :catch_0
    :cond_3
    return-void
.end method

.method private J()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->u()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->l()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->p()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->o()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->r()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/beizi/ad/internal/d/a;->q()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    move-object v7, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v7, v4

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->s()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->t()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "\u5e94\u7528\u540d\u79f0\uff1a"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " | \u5f00\u53d1\u8005\uff1a"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " | \u5e94\u7528\u7248\u672c\uff1a"

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, " | <u>\u6743\u9650\u8be6\u60c5</u> | <u>\u9690\u79c1\u534f\u8bae</u> | <u>\u529f\u80fd\u4ecb\u7ecd</u>"

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    new-instance v10, Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-direct {v10, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    const/high16 v0, 0x40c00000    # 6.0f

    .line 129
    .line 130
    invoke-virtual {v10, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    .line 132
    .line 133
    const-string v0, "#999999"

    .line 134
    .line 135
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    const-string v0, "#333333"

    .line 143
    .line 144
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    .line 149
    .line 150
    invoke-virtual {v10, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 151
    .line 152
    .line 153
    const/16 v0, 0xa

    .line 154
    .line 155
    invoke-virtual {v10, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/beizi/ad/v2/g/b$7;

    .line 159
    .line 160
    move-object v2, v0

    .line 161
    move-object v3, p0

    .line 162
    move-object v4, v9

    .line 163
    invoke-direct/range {v2 .. v8}, Lcom/beizi/ad/v2/g/b$7;-><init>(Lcom/beizi/ad/v2/g/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v9}, Lcom/beizi/ad/lance/a/q;->d(Landroid/content/Context;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    mul-int/lit8 v0, v0, 0x2

    .line 174
    .line 175
    div-int/lit8 v0, v0, 0x3

    .line 176
    .line 177
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 178
    .line 179
    instance-of v2, v1, Landroid/widget/FrameLayout;

    .line 180
    .line 181
    if-eqz v2, :cond_3

    .line 182
    .line 183
    check-cast v1, Landroid/widget/FrameLayout;

    .line 184
    .line 185
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .line 187
    const/4 v3, -0x2

    .line 188
    const/16 v4, 0x53

    .line 189
    .line 190
    invoke-direct {v2, v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private K()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

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
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/ad/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->M:Lcom/beizi/ad/model/i$f;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/ad/model/i$f;->c:Lcom/beizi/ad/model/i$f;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Lcom/beizi/ad/v2/g/b$2;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/g/b$2;-><init>(Lcom/beizi/ad/v2/g/b;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v3, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;ZLcom/beizi/ad/internal/e/h$a;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->H()V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/g/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    return-object p0
.end method

.method static synthetic c(Lcom/beizi/ad/v2/g/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/beizi/ad/v2/g/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/beizi/ad/v2/g/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/g/b;->N:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/beizi/ad/v2/g/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/g/b;->O:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/beizi/ad/v2/g/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/beizi/ad/v2/g/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/v2/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/g/b;->Q:Lcom/beizi/ad/v2/b/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic v(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lcom/beizi/ad/v2/g/b;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/beizi/ad/v2/g/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->C:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public C()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->K:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/beizi/ad/v2/a/b;->n:I

    if-gtz v0, :cond_1

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/beizi/ad/v2/a/b;->n:I

    .line 6
    :cond_1
    new-instance v0, Lcom/beizi/ad/v2/g/b$5;

    iget v1, p0, Lcom/beizi/ad/v2/a/b;->n:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0xc8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/beizi/ad/v2/g/b$5;-><init>(Lcom/beizi/ad/v2/g/b;JJ)V

    iput-object v0, p0, Lcom/beizi/ad/v2/g/b;->K:Landroid/os/CountDownTimer;

    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public D()V
    .locals 14

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {p0}, Lcom/beizi/ad/v2/a/b;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beizi/ad/internal/d/a;->b(Z)V

    .line 4
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v4, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    const-string v5, "100"

    const-string v6, "200"

    const-string v7, "105"

    const-string v8, "206"

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    iget-object v12, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 7
    invoke-virtual/range {v3 .. v12}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 8
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/ad/v2/g/b;->N:I

    .line 5
    iput p2, p0, Lcom/beizi/ad/v2/g/b;->O:I

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/16 p1, 0xb

    .line 7
    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/g/b;->b(I)V

    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/beizi/ad/v2/g/b;->I:Landroid/view/View;

    .line 9
    new-instance p1, Lcom/beizi/ad/v2/g/b$1;

    invoke-direct {p1, p0}, Lcom/beizi/ad/v2/g/b$1;-><init>(Lcom/beizi/ad/v2/g/b;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/beizi/ad/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/d/a;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->h()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/a/b;->n:I

    .line 27
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/g/b;->L:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->F()Lcom/beizi/ad/model/i$f;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/g/b;->M:Lcom/beizi/ad/model/i$f;

    .line 29
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->b(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->c(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->B()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/a/b;->a(Z)V

    .line 32
    iget-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    new-instance v0, Lcom/beizi/ad/v2/g/b$9;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/g/b$9;-><init>(Lcom/beizi/ad/v2/g/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->L()V

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 36
    new-instance v0, Lcom/beizi/ad/v2/g/b$10;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/g/b$10;-><init>(Lcom/beizi/ad/v2/g/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/beizi/ad/model/f;I)V
    .locals 11

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->a(Z)V

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {p0}, Lcom/beizi/ad/v2/a/b;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beizi/ad/internal/d/a;->b(Z)V

    .line 19
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v4, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0xa

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    iget-object v9, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    move-object v5, p1

    move v10, p2

    .line 22
    invoke-virtual/range {v3 .. v10}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Lcom/beizi/ad/model/f;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 23
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    .line 24
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    if-nez p1, :cond_1

    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/ad/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/ad/v2/b/a;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/beizi/ad/v2/g/b;->Q:Lcom/beizi/ad/v2/b/a;

    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/v2/g/b;->E()V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Lcom/beizi/ad/v2/g/b$8;

    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/v2/g/b$8;-><init>(Lcom/beizi/ad/v2/g/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->P:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->d(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->J:Lcom/beizi/ad/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/a;->c()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b;->K:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
