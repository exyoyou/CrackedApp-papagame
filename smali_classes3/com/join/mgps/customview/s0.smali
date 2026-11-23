.class public Lcom/join/mgps/customview/s0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/s0$c;,
        Lcom/join/mgps/customview/s0$d;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field public d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Lcom/join/mgps/customview/s0$c;

.field i:Landroid/view/View;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/s0;->b:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/s0;->i()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/s0;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 7
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/s0;->b:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/s0;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/customview/s0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/s0;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/s0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/s0;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    const v0, 0x7f130543

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/customview/s0$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/s0$a;-><init>(Lcom/join/mgps/customview/s0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private k(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentx"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->k:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->j:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->m:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/customview/s0;->m:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x37

    .line 33
    .line 34
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/customview/s0;->l:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 40
    .line 41
    .line 42
    const/16 p1, 0x36

    .line 43
    .line 44
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/customview/s0;->j:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x35

    .line 53
    .line 54
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/s0;->k:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 60
    .line 61
    .line 62
    const/16 p1, 0x34

    .line 63
    .line 64
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->b:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010091

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const v2, 0x3dcccccd    # 0.1f

    .line 13
    .line 14
    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x96

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/s0;->i:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->e:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->b:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010093

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const v3, 0x3dcccccd    # 0.1f

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x96

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/s0;->i:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->e:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->b:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010093

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const v3, 0x3dcccccd    # 0.1f

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x64

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/s0;->i:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->e:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/customview/s0$b;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/s0$b;-><init>(Lcom/join/mgps/customview/s0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public e()Lcom/join/mgps/customview/s0$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->h:Lcom/join/mgps/customview/s0$c;

    .line 2
    .line 3
    return-object v0
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07f4

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
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 32
    .line 33
    const/16 v1, 0x35

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "\u91d1\u624b\u6307"

    .line 40
    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 45
    .line 46
    const/16 v1, 0x34

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "MOD"

    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 58
    .line 59
    const/16 v1, 0x36

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "\u4e00\u952e\u6280\u80fd"

    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 71
    .line 72
    const/16 v1, 0x37

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "\u5feb\u901f\u901a\u5173"

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 84
    .line 85
    const v1, 0x7f0a0200

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->e:Landroid/view/View;

    .line 93
    .line 94
    new-instance v1, Lcom/join/mgps/customview/r0;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/r0;-><init>(Lcom/join/mgps/customview/s0;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 103
    .line 104
    const v1, 0x7f0a0630

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->j:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 116
    .line 117
    const v1, 0x7f0a106c

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->k:Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 129
    .line 130
    const v1, 0x7f0a1197

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->l:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 142
    .line 143
    const v1, 0x7f0a05fa

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->m:Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->c:Landroid/view/View;

    .line 155
    .line 156
    const v1, 0x7f0a0e10

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/join/mgps/customview/s0;->i:Landroid/view/View;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->j:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->k:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->l:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/customview/s0;->m:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public h(Lcom/join/mgps/customview/s0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFilterItemClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/s0;->h:Lcom/join/mgps/customview/s0$c;

    .line 2
    .line 3
    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "current"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/s0;->showAsDropDown(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/s0;->k(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
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
    sparse-switch p1, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :sswitch_0
    const/16 p1, 0x36

    .line 10
    .line 11
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_1
    const/16 p1, 0x34

    .line 15
    .line 16
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_2
    const/16 p1, 0x35

    .line 20
    .line 21
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_3
    const/16 p1, 0x37

    .line 25
    .line 26
    iput p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/s0;->k(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/s0;->h:Lcom/join/mgps/customview/s0$c;

    .line 34
    .line 35
    iget v0, p0, Lcom/join/mgps/customview/s0;->g:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/s0;->f:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/s0$c;->onItemClick(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/join/mgps/customview/s0;->dismiss()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x7f0a05fa -> :sswitch_3
        0x7f0a0630 -> :sswitch_2
        0x7f0a106c -> :sswitch_1
        0x7f0a1197 -> :sswitch_0
    .end sparse-switch
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/s0;->d:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/s0;->d:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/s0;->d:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    sub-int/2addr v1, v0

    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/customview/s0;->c()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gravity",
            "x",
            "y"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/s0;->d:Landroid/view/View;

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
