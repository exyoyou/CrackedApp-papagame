.class public Lcom/join/mgps/ptr/PtrClassicDefaultHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/ptr/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "cube_ptr_classic_last_update"

.field private static m:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:I

.field private c:Landroid/view/animation/RotateAnimation;

.field private d:Landroid/view/animation/RotateAnimation;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:J

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->m:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method

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
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x96

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 4
    new-instance p1, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x96

    .line 7
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 9
    new-instance p1, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 10
    invoke-virtual {p0, p2}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x96

    .line 12
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 14
    new-instance p1, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 15
    invoke-virtual {p0, p2}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "cube_ptr_classic_last_update"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 35
    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    cmp-long v5, v0, v2

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    return-object v4

    .line 44
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 54
    .line 55
    sub-long/2addr v0, v2

    .line 56
    const-wide/16 v2, 0x3e8

    .line 57
    .line 58
    div-long v2, v0, v2

    .line 59
    .line 60
    long-to-int v3, v2

    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    cmp-long v2, v0, v5

    .line 64
    .line 65
    if-gez v2, :cond_2

    .line 66
    .line 67
    return-object v4

    .line 68
    :cond_2
    if-gtz v3, :cond_3

    .line 69
    .line 70
    return-object v4

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const v2, 0x7f1200d4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/16 v1, 0x3c

    .line 91
    .line 92
    if-ge v3, v1, :cond_4

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v3, 0x7f1200db

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    div-int/2addr v3, v1

    .line 125
    if-le v3, v1, :cond_6

    .line 126
    .line 127
    div-int/2addr v3, v1

    .line 128
    const/16 v1, 0x18

    .line 129
    .line 130
    if-le v3, v1, :cond_5

    .line 131
    .line 132
    new-instance v1, Ljava/util/Date;

    .line 133
    .line 134
    iget-wide v2, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 135
    .line 136
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 137
    .line 138
    .line 139
    sget-object v2, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->m:Ljava/text/SimpleDateFormat;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const v3, 0x7f1200d3

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const v3, 0x7f1200d5

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    return-object v0
.end method

.method private h()V
    .locals 9

    .line 1
    new-instance v7, Landroid/view/animation/RotateAnimation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/high16 v4, 0x3f000000    # 0.5f

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/high16 v6, 0x3f000000    # 0.5f

    .line 11
    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 14
    .line 15
    .line 16
    iput-object v7, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    .line 17
    .line 18
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    .line 27
    .line 28
    iget v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    .line 29
    .line 30
    int-to-long v1, v1

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .line 41
    .line 42
    const/high16 v3, -0x3ccc0000    # -180.0f

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    const/high16 v8, 0x3f000000    # 0.5f

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    .line 53
    .line 54
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    .line 63
    .line 64
    iget v2, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    .line 65
    .line 66
    int-to-long v2, v2

    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private i(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->p()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v0, 0x7f120576

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private j(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 14
    .line 15
    const v0, 0x7f120577

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private k()V
    .locals 0

    .line 1
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->getLastUpdateTime()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Landroid/widget/TextView;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f120575

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "cube_ptr_classic_last_update"

    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    new-instance v0, Ljava/util/Date;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 60
    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 66
    .line 67
    iget-wide v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:J

    .line 68
    .line 69
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->p()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const v0, 0x7f120576

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "isUnderTouch",
            "status",
            "ptrIndicator"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->getOffsetToRefresh()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p4}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p4}, Lcom/join/mgps/ptr/indicator/a;->g()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    const/4 v2, 0x2

    .line 14
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    if-lt p4, v0, :cond_0

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    if-ne p3, v2, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-le v1, v0, :cond_1

    .line 27
    .line 28
    if-gt p4, v0, :cond_1

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    if-ne p3, v2, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->m()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 18
    .line 19
    const v0, 0x7f120575

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected l(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->PtrClassicHeader:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    .line 15
    .line 16
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const v0, 0x7f0d017c

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7f0a12bf

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a12bd

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a12c0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->m()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setRotateAniTime(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:I

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method
