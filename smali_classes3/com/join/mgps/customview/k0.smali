.class public Lcom/join/mgps/customview/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/join/mgps/customview/k0;

.field private static d:Landroid/widget/Toast;

.field private static e:Landroid/widget/TextView;

.field private static f:Landroid/widget/LinearLayout;

.field private static g:Landroid/widget/ImageView;

.field private static h:Landroid/content/Context;

.field private static i:J


# instance fields
.field private a:J

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/customview/k0$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/k0$a;-><init>(Lcom/join/mgps/customview/k0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/k0;->h:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/k0;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Landroid/widget/ImageView;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/k0;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/k0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/k0;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic e(Lcom/join/mgps/customview/k0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/k0;->a:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic f()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/k0;->d:Landroid/widget/Toast;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/join/mgps/customview/k0;->i:J

    .line 2
    .line 3
    return-wide p0
.end method

.method private h(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public static i(Landroid/content/Context;)Lcom/join/mgps/customview/k0;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/join/mgps/customview/k0;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/join/mgps/customview/k0;->h:Landroid/content/Context;

    .line 8
    .line 9
    sget-object v0, Lcom/join/mgps/customview/k0;->c:Lcom/join/mgps/customview/k0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/customview/k0;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/join/mgps/customview/k0;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/join/mgps/customview/k0;->c:Lcom/join/mgps/customview/k0;

    .line 19
    .line 20
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0d080c

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f0a1a77

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    .line 41
    sput-object v1, Lcom/join/mgps/customview/k0;->e:Landroid/widget/TextView;

    .line 42
    .line 43
    const v1, 0x7f0a138f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    sput-object v1, Lcom/join/mgps/customview/k0;->f:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    const v1, 0x7f0a1079

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/ImageView;

    .line 62
    .line 63
    sput-object v1, Lcom/join/mgps/customview/k0;->g:Landroid/widget/ImageView;

    .line 64
    .line 65
    new-instance v1, Landroid/widget/Toast;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    sput-object v1, Lcom/join/mgps/customview/k0;->d:Landroid/widget/Toast;

    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    const/16 v2, 0xc8

    .line 74
    .line 75
    const/16 v3, 0x51

    .line 76
    .line 77
    invoke-virtual {v1, v3, p0, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lcom/join/mgps/customview/k0;->d:Landroid/widget/Toast;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Lcom/join/mgps/customview/k0;->d:Landroid/widget/Toast;

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    sget-object p0, Lcom/join/mgps/customview/k0;->c:Lcom/join/mgps/customview/k0;

    .line 92
    .line 93
    return-object p0
.end method


# virtual methods
.method public j(Lcom/join/mgps/customview/RewardType;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "money",
            "exp"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method show() called.type"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/customview/RewardType;->getVal()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/join/mgps/customview/k0;->h:Landroid/content/Context;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/k0;->k(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/k0;->d:Landroid/widget/Toast;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 32
    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/customview/RewardType;->getVal()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "  \u5956\u52b1: "

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "<font color=\'0xf47500\' >+"

    .line 66
    .line 67
    if-lez p2, :cond_2

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, "</font>\u94dc\u677f"

    .line 81
    .line 82
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    if-lez p3, :cond_2

    .line 93
    .line 94
    const-string p2, "&nbsp;&nbsp;"

    .line 95
    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_2
    if-lez p3, :cond_3

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, "</font>\u7ecf\u9a8c"

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :cond_3
    sget-object p1, Lcom/join/mgps/customview/k0;->e:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string p2, "gap="

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide p2

    .line 151
    sget-wide v0, Lcom/join/mgps/customview/k0;->i:J

    .line 152
    .line 153
    sub-long/2addr p2, v0

    .line 154
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide p1

    .line 161
    sget-wide v0, Lcom/join/mgps/customview/k0;->i:J

    .line 162
    .line 163
    sub-long/2addr p1, v0

    .line 164
    const-wide/16 v0, 0x3a98

    .line 165
    .line 166
    const/4 p3, 0x5

    .line 167
    cmp-long v2, p1, v0

    .line 168
    .line 169
    if-gez v2, :cond_5

    .line 170
    .line 171
    sget-object p1, Lcom/join/mgps/customview/k0;->h:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->I(Landroid/content/Context;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_4

    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 180
    .line 181
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 186
    .line 187
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_5
    sget-object p1, Lcom/join/mgps/customview/k0;->h:Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->I(Landroid/content/Context;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_6

    .line 198
    .line 199
    iget-object p1, p0, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 200
    .line 201
    const-wide/16 v0, 0x2710

    .line 202
    .line 203
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 208
    .line 209
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    .line 211
    .line 212
    :goto_0
    return-void
.end method

.method k(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/k0;->h(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    return p1
.end method
