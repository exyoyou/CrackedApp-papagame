.class public Lcom/join/mgps/adapter/i8;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# static fields
.field public static b:[Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:[Ljava/lang/String;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "\u4e2d\u6587"

    .line 2
    .line 3
    const-string v1, "\u5382\u5546"

    .line 4
    .line 5
    const-string v2, "\u6700\u65b0"

    .line 6
    .line 7
    const-string v3, "\u5927\u578b"

    .line 8
    .line 9
    const-string v4, "\u7834\u89e3"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/join/mgps/adapter/i8;->b:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "\u672a\u5f00\u6d4b"

    .line 18
    .line 19
    const-string v1, "\u793c\u5305"

    .line 20
    .line 21
    const-string v2, "\u9996\u53d1"

    .line 22
    .line 23
    const-string v3, "\u5df2\u5f00\u6d4b"

    .line 24
    .line 25
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/join/mgps/adapter/i8;->c:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "\u63a8\u8350"

    .line 32
    .line 33
    const-string v2, "\u4e2d\u6587"

    .line 34
    .line 35
    const-string v3, "\u7834\u89e3"

    .line 36
    .line 37
    const-string v4, "\u7f8e\u56fd\u699c"

    .line 38
    .line 39
    const-string v5, "\u65e5\u672c\u699c"

    .line 40
    .line 41
    const-string v6, "\u97e9\u56fd\u699c"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/join/mgps/adapter/i8;->d:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fm",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/join/mgps/adapter/i8;->a:I

    .line 5
    .line 6
    const-string p1, "2308"

    .line 7
    .line 8
    sget-object p2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "750"

    .line 17
    .line 18
    sget-object p2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p1, "753"

    .line 27
    .line 28
    sget-object p2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :cond_0
    const-string p1, "\u4e2d\u6587"

    .line 37
    .line 38
    const-string p2, "\u5382\u5546"

    .line 39
    .line 40
    const-string v0, "\u6700\u65b0"

    .line 41
    .line 42
    const-string v1, "\u5927\u578b"

    .line 43
    .line 44
    const-string v2, "\u7ecf\u5178"

    .line 45
    .line 46
    filled-new-array {v0, v1, v2, p1, p2}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sput-object p1, Lcom/join/mgps/adapter/i8;->b:[Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "\u63a8\u8350"

    .line 53
    .line 54
    const-string v1, "\u4e2d\u6587"

    .line 55
    .line 56
    const-string v2, "\u7ecf\u5178"

    .line 57
    .line 58
    const-string v3, "\u7f8e\u56fd\u699c"

    .line 59
    .line 60
    const-string v4, "\u65e5\u672c\u699c"

    .line 61
    .line 62
    const-string v5, "\u97e9\u56fd\u699c"

    .line 63
    .line 64
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sput-object p1, Lcom/join/mgps/adapter/i8;->d:[Ljava/lang/String;

    .line 69
    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/i8;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/adapter/i8;->b:[Ljava/lang/String;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/join/mgps/adapter/i8;->c:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    return v0

    .line 16
    :cond_1
    sget-object v0, Lcom/join/mgps/adapter/i8;->d:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/i8;->a:I

    .line 2
    .line 3
    const-string v1, "intentTo"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    if-eq p1, v5, :cond_1

    .line 14
    .line 15
    if-eq p1, v4, :cond_1

    .line 16
    .line 17
    if-eq p1, v3, :cond_1

    .line 18
    .line 19
    if-eq p1, v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Lcom/join/mgps/fragment/t3;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/join/mgps/fragment/t3;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance v0, Lcom/join/mgps/fragment/GameOlOpenTestFragment_;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/join/mgps/fragment/GameOlOpenTestFragment_;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    if-ne v0, v5, :cond_7

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    if-eq p1, v5, :cond_5

    .line 51
    .line 52
    if-eq p1, v4, :cond_4

    .line 53
    .line 54
    if-eq p1, v3, :cond_3

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_3
    new-instance p1, Lcom/join/mgps/fragment/p3;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/join/mgps/fragment/p3;-><init>()V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_4
    new-instance p1, Lcom/join/mgps/fragment/GameOlNoOpenTestFragment_;

    .line 65
    .line 66
    invoke-direct {p1}, Lcom/join/mgps/fragment/GameOlNoOpenTestFragment_;-><init>()V

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_5
    new-instance p1, Lcom/join/mgps/fragment/GameOlOpenTestFragment_;

    .line 71
    .line 72
    invoke-direct {p1}, Lcom/join/mgps/fragment/GameOlOpenTestFragment_;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const/4 v2, -0x1

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_6
    new-instance p1, Lcom/join/mgps/fragment/GameOlFirstFragment_;

    .line 89
    .line 90
    invoke-direct {p1}, Lcom/join/mgps/fragment/GameOlFirstFragment_;-><init>()V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_7
    if-ne v0, v4, :cond_10

    .line 95
    .line 96
    const-string v0, "type"

    .line 97
    .line 98
    if-eqz p1, :cond_c

    .line 99
    .line 100
    if-eq p1, v5, :cond_c

    .line 101
    .line 102
    if-ne p1, v4, :cond_8

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_8
    new-instance v1, Lcom/join/mgps/fragment/o4;

    .line 106
    .line 107
    invoke-direct {v1}, Lcom/join/mgps/fragment/o4;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v6, Landroid/os/Bundle;

    .line 111
    .line 112
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 113
    .line 114
    .line 115
    if-eq p1, v3, :cond_b

    .line 116
    .line 117
    if-eq p1, v2, :cond_a

    .line 118
    .line 119
    const/4 v2, 0x5

    .line 120
    if-eq p1, v2, :cond_9

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_9
    invoke-virtual {v6, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_a
    invoke-virtual {v6, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_b
    invoke-virtual {v6, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-virtual {v1, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_c
    :goto_1
    new-instance v1, Lcom/join/mgps/fragment/PaPaBannerListFragment_;

    .line 139
    .line 140
    invoke-direct {v1}, Lcom/join/mgps/fragment/PaPaBannerListFragment_;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v2, Landroid/os/Bundle;

    .line 144
    .line 145
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 146
    .line 147
    .line 148
    if-eqz p1, :cond_f

    .line 149
    .line 150
    if-eq p1, v5, :cond_e

    .line 151
    .line 152
    if-eq p1, v4, :cond_d

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_d
    const/16 p1, 0xd

    .line 156
    .line 157
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_e
    const/16 p1, 0xc

    .line 162
    .line 163
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_f
    const/16 p1, 0xb

    .line 168
    .line 169
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 173
    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_10
    :goto_3
    const/4 p1, 0x0

    .line 177
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/i8;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/adapter/i8;->b:[Ljava/lang/String;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/join/mgps/adapter/i8;->c:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object p1, v0, p1

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    sget-object v0, Lcom/join/mgps/adapter/i8;->d:[Ljava/lang/String;

    .line 19
    .line 20
    aget-object p1, v0, p1

    .line 21
    .line 22
    return-object p1
.end method
