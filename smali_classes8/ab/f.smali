.class public final Lab/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb/b;
.implements Lcb/c;
.implements Lbb/b;
.implements Lab/e;
.implements Lab/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePickerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePickerHelper.kt\ncom/zyyoona7/picker/helper/TimePickerHelper\n*L\n1#1,697:1\n*E\n"
.end annotation


# static fields
.field public static final i:Lab/f$a;


# instance fields
.field private b:Lcb/c;

.field private c:Lcom/zyyoona7/wheel/formatter/a;

.field private d:Lbb/f;

.field private e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

.field private f:Lcom/zyyoona7/picker/ex/WheelHourView;

.field private g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

.field private h:Lcom/zyyoona7/picker/ex/WheelSecondView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lab/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lab/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lab/f;->i:Lab/f$a;

    return-void
.end method

.method public constructor <init>(Lcom/zyyoona7/picker/ex/WheelAmPmView;Lcom/zyyoona7/picker/ex/WheelHourView;Lcom/zyyoona7/picker/ex/WheelMinuteView;Lcom/zyyoona7/picker/ex/WheelSecondView;)V
    .locals 0
    .param p1    # Lcom/zyyoona7/picker/ex/WheelAmPmView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/zyyoona7/picker/ex/WheelHourView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/zyyoona7/picker/ex/WheelMinuteView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/zyyoona7/picker/ex/WheelSecondView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 5
    .line 6
    iput-object p2, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 7
    .line 8
    iput-object p3, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 9
    .line 10
    iput-object p4, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    iget-object p1, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 50
    .line 51
    .line 52
    :cond_5
    iget-object p1, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 53
    .line 54
    if-eqz p1, :cond_6

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 57
    .line 58
    .line 59
    :cond_6
    iget-object p1, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 60
    .line 61
    if-eqz p1, :cond_7

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 64
    .line 65
    .line 66
    :cond_7
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 67
    .line 68
    if-eqz p1, :cond_8

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Lcom/zyyoona7/picker/ex/WheelHourView;->setOnAmPmChangedListener(Lbb/b;)V

    .line 71
    .line 72
    .line 73
    :cond_8
    return-void
.end method


# virtual methods
.method public a(Lcom/zyyoona7/wheel/WheelView;I)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->b:Lcb/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcb/c;->a(Lcom/zyyoona7/wheel/WheelView;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/picker/ex/WheelAmPmView;->c1()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/picker/ex/WheelHourView;->d1()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public d(Lcom/zyyoona7/wheel/WheelView;I)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->b:Lcb/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcb/c;->d(Lcom/zyyoona7/wheel/WheelView;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/adapter/a;I)V
    .locals 6
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/zyyoona7/wheel/adapter/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zyyoona7/wheel/WheelView;",
            "Lcom/zyyoona7/wheel/adapter/a<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    sget-object p2, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->AM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p2, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->PM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1, p2}, Lcom/zyyoona7/picker/ex/WheelHourView;->setHourType(Lcom/zyyoona7/picker/ex/WheelHourView$HourType;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/zyyoona7/picker/ex/WheelHourView;->d1()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    move v1, p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_1
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/zyyoona7/wheel/WheelView;->getAdapter()Lcom/zyyoona7/wheel/adapter/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/adapter/a;->p(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Integer;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    move v2, p1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v2, -0x1

    .line 67
    :goto_2
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/zyyoona7/picker/ex/WheelHourView;->getHourType()Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/4 p1, 0x0

    .line 77
    :goto_3
    sget-object v3, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->AM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    .line 78
    .line 79
    if-ne p1, v3, :cond_5

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    const/4 v5, 0x0

    .line 85
    :goto_4
    iget-object p1, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/zyyoona7/wheel/WheelView;->getAdapter()Lcom/zyyoona7/wheel/adapter/a;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/adapter/a;->p(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Integer;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    move v3, p1

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    const/4 v3, -0x1

    .line 110
    :goto_5
    iget-object p1, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/zyyoona7/wheel/WheelView;->getAdapter()Lcom/zyyoona7/wheel/adapter/a;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/adapter/a;->p(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/Integer;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    move v4, p1

    .line 133
    goto :goto_6

    .line 134
    :cond_7
    const/4 v4, -0x1

    .line 135
    :goto_6
    iget-object v0, p0, Lab/f;->d:Lbb/f;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    invoke-interface/range {v0 .. v5}, Lbb/f;->a(ZIIIZ)V

    .line 140
    .line 141
    .line 142
    :cond_8
    return-void
.end method

.method public f(Lcom/zyyoona7/picker/ex/WheelHourView;Z)V
    .locals 6
    .param p1    # Lcom/zyyoona7/picker/ex/WheelHourView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v1, p2, 0x1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public getSelectedHour()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lab/f;->getWheelHourView()Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItem()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0xc

    .line 19
    .line 20
    :goto_0
    return v0
.end method

.method public getSelectedMinute()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lab/f;->getWheelMinuteView()Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItem()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public getSelectedSecond()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lab/f;->getWheelSecondView()Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItem()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public getWheelAmPmView()Lcom/zyyoona7/picker/ex/WheelAmPmView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "WheelAmPmView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getWheelHourView()Lcom/zyyoona7/picker/ex/WheelHourView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "WheelHourView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getWheelMinuteView()Lcom/zyyoona7/picker/ex/WheelMinuteView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "WheelMinuteView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getWheelSecondView()Lcom/zyyoona7/picker/ex/WheelSecondView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "WheelSecondView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public set24Hour(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 17
    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/16 v2, 0x8

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/zyyoona7/picker/ex/WheelHourView;->set24Hour(Z)V

    .line 37
    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Lab/f;->c:Lcom/zyyoona7/wheel/formatter/a;

    .line 40
    .line 41
    if-nez v0, :cond_6

    .line 42
    .line 43
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    new-instance p1, Lcom/zyyoona7/wheel/formatter/a;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {p1, v2, v1, v2}, Lcom/zyyoona7/wheel/formatter/a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    new-instance p1, Lcom/zyyoona7/wheel/formatter/a;

    .line 57
    .line 58
    const-string v1, "%d"

    .line 59
    .line 60
    invoke-direct {p1, v1}, Lcom/zyyoona7/wheel/formatter/a;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 64
    .line 65
    .line 66
    :cond_6
    return-void
.end method

.method public setAmPmMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAmPmTextHandler(Lbb/a;)V
    .locals 1
    .param p1    # Lbb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/picker/ex/WheelAmPmView;->setAmPmTextHandler(Lbb/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAutoFitTextSize(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setCurtainColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setCurtainColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setCurved(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setCurvedArcDirectionFactor(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCyclic(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCyclic(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCyclic(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setDividerCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint$Cap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setDividerColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setDividerHeight(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    :cond_3
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    :cond_3
    return-void
.end method

.method public setDividerOffsetY(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    :cond_3
    return-void
.end method

.method public setDividerOffsetY(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    :cond_3
    return-void
.end method

.method public setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$DividerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setHourMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setHourTextFormatter(Lcom/zyyoona7/wheel/formatter/a;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lab/f;->c:Lcom/zyyoona7/wheel/formatter/a;

    .line 2
    .line 3
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lab/f;->setLeftText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_2
    iget-object p1, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setLeftTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setLeftTextGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setLeftTextMarginRight(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    :cond_3
    return-void
.end method

.method public setLeftTextMarginRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    :cond_3
    return-void
.end method

.method public setLeftTextSize(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    :cond_3
    return-void
.end method

.method public setLeftTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    :cond_3
    return-void
.end method

.method public setLineSpacing(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    :cond_3
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    :cond_3
    return-void
.end method

.method public setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 0
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lab/f;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    return-void
.end method

.method public setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 0
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1}, Lab/f;->setAmPmMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 3
    invoke-virtual {p0, p2}, Lab/f;->setHourMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 4
    invoke-virtual {p0, p3}, Lab/f;->setMinuteMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 5
    invoke-virtual {p0, p4}, Lab/f;->setSecondMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    :cond_3
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    :cond_3
    return-void
.end method

.method public setMinuteMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMinuteTextFormatter(Lcom/zyyoona7/wheel/formatter/a;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setNormalTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setOnScrollChangedListener(Lcb/c;)V
    .locals 0
    .param p1    # Lcb/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lab/f;->b:Lcb/c;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTimeSelectedListener(Lbb/f;)V
    .locals 0
    .param p1    # Lbb/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lab/f;->d:Lbb/f;

    .line 2
    .line 3
    return-void
.end method

.method public setRefractRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setResetSelectedPosition(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lab/f;->setRightText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_2
    iget-object p1, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setRightTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setRightTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setRightTextGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setRightTextMarginLeft(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    :cond_3
    return-void
.end method

.method public setRightTextMarginLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    :cond_3
    return-void
.end method

.method public setRightTextSize(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    :cond_3
    return-void
.end method

.method public setRightTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    :cond_3
    return-void
.end method

.method public setSecondMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSecondTextFormatter(Lcom/zyyoona7/wheel/formatter/a;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setSelectedTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setShowCurtain(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setShowHour(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x8

    .line 7
    .line 8
    :goto_0
    iget-object v2, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v2, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/zyyoona7/picker/ex/WheelHourView;->d1()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void
.end method

.method public setShowMinute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public setShowSecond(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setSoundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setSoundVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint$Align;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setTextPadding(F)V
    .locals 1

    .line 9
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    .line 10
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    .line 11
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    .line 12
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    :cond_3
    return-void
.end method

.method public setTextPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 6
    :cond_4
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 7
    :cond_5
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 8
    :cond_6
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    :cond_7
    return-void
.end method

.method public setTextPaddingLeft(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    :cond_3
    return-void
.end method

.method public setTextPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    :cond_3
    return-void
.end method

.method public setTextPaddingRight(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    :cond_3
    return-void
.end method

.method public setTextPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    :cond_3
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    :cond_3
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    :cond_3
    return-void
.end method

.method public setTime(IIIZZ)V
    .locals 2

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p4, :cond_0

    const/16 v1, 0xb

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 10
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    xor-int/lit8 p1, p5, 0x1

    const/16 p5, 0x9

    .line 11
    invoke-virtual {v0, p5, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 13
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    const-string p1, "calendar"

    .line 14
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lab/f;->setTime(Ljava/util/Calendar;Z)V

    return-void
.end method

.method public setTime(Ljava/util/Calendar;Z)V
    .locals 5
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x9

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 5
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, v0, v3, p1}, Lab/f;->setTimeFor24(III)V

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, v1, v3, p1, p2}, Lab/f;->setTimeFor12(IIIZ)V

    :goto_1
    return-void
.end method

.method public setTimeFor12(IIIZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/zyyoona7/picker/ex/WheelHourView;->d1()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1}, Lab/f;->set24Hour(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v3, v0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    xor-int/lit8 v4, p4, 0x1

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x6

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-static/range {v3 .. v8}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v9, v0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 33
    .line 34
    if-eqz v9, :cond_3

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v13, 0x6

    .line 39
    const/4 v14, 0x0

    .line 40
    move/from16 v10, p1

    .line 41
    .line 42
    invoke-static/range {v9 .. v14}, Lcom/zyyoona7/picker/ex/WheelHourView;->setSelectedHour$default(Lcom/zyyoona7/picker/ex/WheelHourView;IZIILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object v1, v0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x6

    .line 52
    const/4 v6, 0x0

    .line 53
    move/from16 v2, p2

    .line 54
    .line 55
    invoke-static/range {v1 .. v6}, Lcom/zyyoona7/picker/ex/WheelMinuteView;->setSelectedMinute$default(Lcom/zyyoona7/picker/ex/WheelMinuteView;IZIILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v7, v0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 59
    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x6

    .line 65
    const/4 v12, 0x0

    .line 66
    move/from16 v8, p3

    .line 67
    .line 68
    invoke-static/range {v7 .. v12}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecond$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IZIILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    return-void
.end method

.method public setTimeFor24(III)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/zyyoona7/picker/ex/WheelHourView;->d1()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    :goto_0
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lab/f;->set24Hour(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v3, v0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x6

    .line 25
    const/4 v8, 0x0

    .line 26
    move/from16 v4, p1

    .line 27
    .line 28
    invoke-static/range {v3 .. v8}, Lcom/zyyoona7/picker/ex/WheelHourView;->setSelectedHour$default(Lcom/zyyoona7/picker/ex/WheelHourView;IZIILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v9, v0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 32
    .line 33
    if-eqz v9, :cond_3

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x6

    .line 38
    const/4 v14, 0x0

    .line 39
    move/from16 v10, p2

    .line 40
    .line 41
    invoke-static/range {v9 .. v14}, Lcom/zyyoona7/picker/ex/WheelMinuteView;->setSelectedMinute$default(Lcom/zyyoona7/picker/ex/WheelMinuteView;IZIILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v1, v0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x6

    .line 51
    const/4 v6, 0x0

    .line 52
    move/from16 v2, p3

    .line 53
    .line 54
    invoke-static/range {v1 .. v6}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecond$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IZIILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    :cond_3
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    :cond_3
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public setWheelDividerPadding(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    :cond_3
    return-void
.end method

.method public setWheelDividerPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/f;->e:Lcom/zyyoona7/picker/ex/WheelAmPmView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/f;->f:Lcom/zyyoona7/picker/ex/WheelHourView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/f;->g:Lcom/zyyoona7/picker/ex/WheelMinuteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/f;->h:Lcom/zyyoona7/picker/ex/WheelSecondView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    :cond_3
    return-void
.end method
