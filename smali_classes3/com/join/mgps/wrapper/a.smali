.class public Lcom/join/mgps/wrapper/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/wrapper/a$b;,
        Lcom/join/mgps/wrapper/a$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sput v0, Lcom/join/mgps/wrapper/a;->a:I

    .line 4
    .line 5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/wrapper/b;->a(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/wrapper/e;->a(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/mgps/wrapper/e;->b(Landroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static final d(Landroid/view/MenuItem;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "show"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/wrapper/b;->b(Landroid/view/MenuItem;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final e(Landroid/view/MotionEvent;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "pointerId"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/wrapper/e;->c(Landroid/view/MotionEvent;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public static final f(Landroid/view/MotionEvent;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/mgps/wrapper/e;->d(Landroid/view/MotionEvent;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public static final g(Landroid/view/MotionEvent;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "pointerIndex"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/wrapper/e;->e(Landroid/view/MotionEvent;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static final h(Landroid/view/MotionEvent;I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "pointerIndex"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/wrapper/e;->f(Landroid/view/MotionEvent;I)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSize()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final i(Landroid/view/MotionEvent;I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "pointerIndex"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/wrapper/e;->g(Landroid/view/MotionEvent;I)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final j(Landroid/view/MotionEvent;I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "pointerIndex"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/wrapper/e;->h(Landroid/view/MotionEvent;I)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static k(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/wrapper/d;->b(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/wrapper/b;->d(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static m(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/wrapper/b;->e(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final n()Ljava/io/File;
    .locals 3

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/wrapper/f;->a()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "pictures"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    const-string v2, "screenshots"

    .line 26
    .line 27
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public static o()Z
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/wrapper/e;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public static p()Z
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/wrapper/e;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public static q()Z
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/wrapper/e;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public static final r(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_2

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0xd

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0xe

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/join/mgps/wrapper/d;->a(Landroid/view/ViewConfiguration;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 31
    :goto_1
    return p0
.end method

.method public static final s(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "keyCode"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    const/16 p0, 0x1b

    .line 4
    .line 5
    if-eq p1, p0, :cond_f

    .line 6
    .line 7
    const/16 p0, 0x3e

    .line 8
    .line 9
    if-eq p1, p0, :cond_e

    .line 10
    .line 11
    const/16 p0, 0x4d

    .line 12
    .line 13
    if-eq p1, p0, :cond_d

    .line 14
    .line 15
    const/16 p0, 0x50

    .line 16
    .line 17
    if-eq p1, p0, :cond_c

    .line 18
    .line 19
    const/16 p0, 0x52

    .line 20
    .line 21
    if-eq p1, p0, :cond_b

    .line 22
    .line 23
    const/16 p0, 0x54

    .line 24
    .line 25
    if-eq p1, p0, :cond_a

    .line 26
    .line 27
    const/16 p0, 0x66

    .line 28
    .line 29
    if-eq p1, p0, :cond_9

    .line 30
    .line 31
    const/16 p0, 0x68

    .line 32
    .line 33
    if-eq p1, p0, :cond_8

    .line 34
    .line 35
    const/4 p0, 0x3

    .line 36
    if-eq p1, p0, :cond_7

    .line 37
    .line 38
    const/4 p0, 0x4

    .line 39
    if-eq p1, p0, :cond_6

    .line 40
    .line 41
    const/4 p0, 0x5

    .line 42
    if-eq p1, p0, :cond_5

    .line 43
    .line 44
    const/16 p0, 0x42

    .line 45
    .line 46
    if-eq p1, p0, :cond_4

    .line 47
    .line 48
    const/16 p0, 0x43

    .line 49
    .line 50
    if-eq p1, p0, :cond_3

    .line 51
    .line 52
    const/16 p0, 0x6c

    .line 53
    .line 54
    if-eq p1, p0, :cond_2

    .line 55
    .line 56
    const/16 p0, 0x6d

    .line 57
    .line 58
    if-eq p1, p0, :cond_1

    .line 59
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    packed-switch p1, :pswitch_data_1

    .line 64
    .line 65
    .line 66
    packed-switch p1, :pswitch_data_2

    .line 67
    .line 68
    .line 69
    sget p0, Lcom/join/mgps/wrapper/a;->b:I

    .line 70
    .line 71
    const/16 v0, 0xc

    .line 72
    .line 73
    if-lt p0, v0, :cond_0

    .line 74
    .line 75
    invoke-static {p1}, Lcom/join/mgps/wrapper/c;->c(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "KEYCODE_"

    .line 80
    .line 81
    const-string v0, ""

    .line 82
    .line 83
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const/16 p1, 0x5f

    .line 88
    .line 89
    const/16 v0, 0x20

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v0, "??? (\u2116"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const/16 p1, 0x29

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_0
    const-string p0, "SHIFT (right)"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_1
    const-string p0, "SHIFT (left)"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_2
    const-string p0, "ALT (right)"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_3
    const-string p0, "ALT (left)"

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_4
    const-string p0, "."

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_5
    const-string p0, ","

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_6
    const-string p0, "Z"

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_7
    const-string p0, "Y"

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_8
    const-string p0, "X"

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_9
    const-string p0, "W"

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_a
    const-string p0, "V"

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_b
    const-string p0, "U"

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_c
    const-string p0, "T"

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_d
    const-string p0, "S"

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_e
    const-string p0, "R"

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_f
    const-string p0, "Q"

    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_10
    const-string p0, "P"

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_11
    const-string p0, "O"

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_12
    const-string p0, "N"

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_13
    const-string p0, "M"

    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_14
    const-string p0, "L"

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_15
    const-string p0, "K"

    .line 187
    .line 188
    return-object p0

    .line 189
    :pswitch_16
    const-string p0, "J"

    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_17
    const-string p0, "I"

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_18
    const-string p0, "H"

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_19
    const-string p0, "G"

    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_1a
    const-string p0, "F"

    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_1b
    const-string p0, "E"

    .line 205
    .line 206
    return-object p0

    .line 207
    :pswitch_1c
    const-string p0, "D"

    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_1d
    const-string p0, "C"

    .line 211
    .line 212
    return-object p0

    .line 213
    :pswitch_1e
    const-string p0, "B"

    .line 214
    .line 215
    return-object p0

    .line 216
    :pswitch_1f
    const-string p0, "A"

    .line 217
    .line 218
    return-object p0

    .line 219
    :pswitch_20
    const-string p0, "Volume DOWN"

    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_21
    const-string p0, "Volume UP"

    .line 223
    .line 224
    return-object p0

    .line 225
    :pswitch_22
    const-string p0, "DPAD Center"

    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_23
    const-string p0, "DPAD Right"

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_24
    const-string p0, "DPAD Left"

    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_25
    const-string p0, "DPAD Down"

    .line 235
    .line 236
    return-object p0

    .line 237
    :pswitch_26
    const-string p0, "DPAD Up"

    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_27
    const-string p0, "9"

    .line 241
    .line 242
    return-object p0

    .line 243
    :pswitch_28
    const-string p0, "8"

    .line 244
    .line 245
    return-object p0

    .line 246
    :pswitch_29
    const-string p0, "7"

    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_2a
    const-string p0, "6"

    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_2b
    const-string p0, "5"

    .line 253
    .line 254
    return-object p0

    .line 255
    :pswitch_2c
    const-string p0, "4"

    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_2d
    const-string p0, "3"

    .line 259
    .line 260
    return-object p0

    .line 261
    :pswitch_2e
    const-string p0, "2"

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_2f
    const-string p0, "1"

    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_30
    const-string p0, "0"

    .line 268
    .line 269
    return-object p0

    .line 270
    :cond_1
    const-string p0, "Select"

    .line 271
    .line 272
    return-object p0

    .line 273
    :cond_2
    const-string p0, "Start"

    .line 274
    .line 275
    return-object p0

    .line 276
    :cond_3
    const-string p0, "DEL"

    .line 277
    .line 278
    return-object p0

    .line 279
    :cond_4
    const-string p0, "ENTER"

    .line 280
    .line 281
    return-object p0

    .line 282
    :cond_5
    const-string p0, "CALL"

    .line 283
    .line 284
    return-object p0

    .line 285
    :cond_6
    const-string p0, "BACK"

    .line 286
    .line 287
    return-object p0

    .line 288
    :cond_7
    const-string p0, "HOME"

    .line 289
    .line 290
    return-object p0

    .line 291
    :cond_8
    const-string p0, "Right trigger"

    .line 292
    .line 293
    return-object p0

    .line 294
    :cond_9
    const-string p0, "Left trigger"

    .line 295
    .line 296
    return-object p0

    .line 297
    :cond_a
    const-string p0, "SEARCH"

    .line 298
    .line 299
    return-object p0

    .line 300
    :cond_b
    const-string p0, "MENU"

    .line 301
    .line 302
    return-object p0

    .line 303
    :cond_c
    const-string p0, "FOCUS"

    .line 304
    .line 305
    return-object p0

    .line 306
    :cond_d
    const-string p0, "@"

    .line 307
    .line 308
    return-object p0

    .line 309
    :cond_e
    const-string p0, "SPACE"

    .line 310
    .line 311
    return-object p0

    .line 312
    :cond_f
    const-string p0, "CAMERA"

    .line 313
    .line 314
    return-object p0

    .line 315
    :cond_10
    const-string p0, "-"

    .line 316
    .line 317
    return-object p0

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Landroid/content/Context;)Z
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
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/mgps/wrapper/e;->l(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
