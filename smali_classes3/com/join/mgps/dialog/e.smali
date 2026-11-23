.class public Lcom/join/mgps/dialog/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field b:Landroid/content/Context;

.field c:Landroid/widget/TextView;

.field d:Landroid/webkit/WebView;

.field e:Lcom/join/mgps/dto/VersionDto;

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/widget/RelativeLayout;

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;

.field i:Landroid/widget/Button;

.field j:Landroid/view/View;

.field k:Z

.field l:Z

.field private m:J


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

    const v0, 0x7f13016a

    .line 12
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/dialog/e;->l:Z

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/join/mgps/dialog/e;->m:J

    .line 15
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "theme",
            "versionDto"
        }
    .end annotation

    const p2, 0x7f13016a

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/dialog/e;->m:J

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/dialog/e;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "theme",
            "versionDto",
            "mandatory"
        }
    .end annotation

    const p2, 0x7f13016a

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/dialog/e;->l:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/dialog/e;->m:J

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 6
    iput-boolean p4, p0, Lcom/join/mgps/dialog/e;->k:Z

    return-void
.end method

.method private a(Ljava/io/File;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2, p1}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/dialog/e;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/e;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/VersionDto;->getTpl_type()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->f:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->g:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->i:Landroid/widget/Button;

    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/dialog/e$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/e$c;-><init>(Lcom/join/mgps/dialog/e;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/join/mgps/dialog/e;->k:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->i:Landroid/widget/Button;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->i:Landroid/widget/Button;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/VersionDto;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/dialog/e$d;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/e$d;-><init>(Lcom/join/mgps/dialog/e;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->f:Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->g:Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/dialog/e;->d:Landroid/webkit/WebView;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/dto/VersionDto;->getInfo()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const-string v7, "text/html"

    .line 94
    .line 95
    const-string v8, "utf-8"

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v0, p0, Lcom/join/mgps/dialog/e;->k:Z

    .line 102
    .line 103
    const v1, 0x7f0a02f5

    .line 104
    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :goto_2
    iget-boolean v0, p0, Lcom/join/mgps/dialog/e;->l:Z

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 141
    .line 142
    const v1, 0x7f0a1af6

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/TextView;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 152
    .line 153
    const v2, 0x7f0a0961

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    const-string v1, "\u514d\u6d41\u91cf\u5b89\u88c5"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txt"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "versionDto",
            "mandatory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/dialog/e;->k:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/dialog/e;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/join/mgps/dialog/e;->k:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-wide v4, p0, Lcom/join/mgps/dialog/e;->m:J

    .line 24
    .line 25
    sub-long/2addr v2, v4

    .line 26
    const-wide/16 v4, 0x7d0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 34
    .line 35
    const-string v2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    .line 36
    .line 37
    invoke-static {v0, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iput-wide v2, p0, Lcom/join/mgps/dialog/e;->m:J

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 55
    .line 56
    check-cast v0, Landroid/app/Activity;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 6
    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const v0, 0x7f0d01b6

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 34
    .line 35
    const v0, 0x7f0a094d

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/webkit/WebView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->d:Landroid/webkit/WebView;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T3(Landroid/webkit/WebView;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 50
    .line 51
    const v0, 0x7f0a118f

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->f:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 63
    .line 64
    const v0, 0x7f0a1128

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->g:Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 76
    .line 77
    const v0, 0x7f0a1127

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 89
    .line 90
    const v0, 0x7f0a111d

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/Button;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/join/mgps/dialog/e;->i:Landroid/widget/Button;

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/join/mgps/dialog/e;->e()V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 105
    .line 106
    const v0, 0x7f0a1af6

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v0, Lcom/join/mgps/dialog/e$a;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/e$a;-><init>(Lcom/join/mgps/dialog/e;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 122
    .line 123
    const v0, 0x7f0a02f5

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v0, Lcom/join/mgps/dialog/e$b;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/e$b;-><init>(Lcom/join/mgps/dialog/e;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->j:Landroid/view/View;

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
