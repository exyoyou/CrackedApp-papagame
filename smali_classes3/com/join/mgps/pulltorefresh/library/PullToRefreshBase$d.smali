.class synthetic Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->d:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->d:[I

    .line 21
    .line 22
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    array-length v2, v2

    .line 35
    new-array v2, v2, [I

    .line 36
    .line 37
    sput-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 38
    .line 39
    :try_start_2
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    .line 47
    :catch_2
    :try_start_3
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 48
    .line 49
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 56
    .line 57
    :catch_3
    const/4 v2, 0x3

    .line 58
    :try_start_4
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 59
    .line 60
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 67
    .line 68
    :catch_4
    const/4 v3, 0x4

    .line 69
    :try_start_5
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 70
    .line 71
    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 78
    .line 79
    :catch_5
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    array-length v4, v4

    .line 84
    new-array v4, v4, [I

    .line 85
    .line 86
    sput-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 87
    .line 88
    :try_start_6
    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 95
    .line 96
    :catch_6
    :try_start_7
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 97
    .line 98
    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 105
    .line 106
    :catch_7
    :try_start_8
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 107
    .line 108
    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    aput v2, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 115
    .line 116
    :catch_8
    :try_start_9
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 117
    .line 118
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    aput v3, v2, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 125
    .line 126
    :catch_9
    :try_start_a
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 127
    .line 128
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/4 v4, 0x5

    .line 135
    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 136
    .line 137
    :catch_a
    :try_start_b
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 138
    .line 139
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/4 v4, 0x6

    .line 146
    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 147
    .line 148
    :catch_b
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    array-length v2, v2

    .line 153
    new-array v2, v2, [I

    .line 154
    .line 155
    sput-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 156
    .line 157
    :try_start_c
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    aput v1, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 164
    .line 165
    :catch_c
    :try_start_d
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 166
    .line 167
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    aput v0, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 174
    .line 175
    :catch_d
    return-void
.end method
