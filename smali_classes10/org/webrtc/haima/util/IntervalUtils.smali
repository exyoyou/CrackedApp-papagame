.class public Lorg/webrtc/haima/util/IntervalUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static final MIN_INTERVAL:I = 0x5


# instance fields
.field intervalInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isInitSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/webrtc/haima/util/IntervalUtils;->initIntervalInfos(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lorg/webrtc/haima/util/IntervalUtils;->isInitSuccess:Z

    .line 16
    .line 17
    return-void
.end method

.method private initIntervalInfos(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const-string v0, ";"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    aget-object v3, p1, v2

    .line 19
    .line 20
    new-instance v4, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;

    .line 21
    .line 22
    invoke-direct {v4, v3}, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->isVaild()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    :cond_3
    return v1
.end method

.method public static test()V
    .locals 5

    .line 1
    new-instance v0, Lorg/webrtc/haima/util/IntervalUtils;

    .line 2
    .line 3
    const-string v1, "20,10;10,20;0,60"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/webrtc/haima/util/IntervalUtils;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, " useTime 6  interval \uff1a"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-wide/16 v3, -0x3e8

    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Lorg/webrtc/haima/util/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-wide/16 v3, 0x6

    .line 36
    .line 37
    invoke-virtual {v0, v3, v4}, Lorg/webrtc/haima/util/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, " useTime 16  interval \uff1a"

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-wide/16 v3, 0x10

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Lorg/webrtc/haima/util/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, " useTime 26  interval \uff1a"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-wide/16 v3, 0x1a

    .line 74
    .line 75
    invoke-virtual {v0, v3, v4}, Lorg/webrtc/haima/util/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, " useTime 36  interval \uff1a"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-wide/16 v3, 0x24

    .line 93
    .line 94
    invoke-virtual {v0, v3, v4}, Lorg/webrtc/haima/util/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-wide/16 v2, 0x3e8

    .line 110
    .line 111
    invoke-virtual {v0, v2, v3}, Lorg/webrtc/haima/util/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public getIntervalTimeByUseTime(J)I
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x5

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;

    .line 25
    .line 26
    invoke-static {v1}, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->access$000(Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-long v1, v1

    .line 31
    cmp-long v3, p1, v1

    .line 32
    .line 33
    if-ltz v3, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lorg/webrtc/haima/util/IntervalUtils;->intervalInfos:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;

    .line 42
    .line 43
    invoke-static {p1}, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->access$100(Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 p1, 0x3c

    .line 52
    .line 53
    :goto_1
    mul-int/lit16 p1, p1, 0x3e8

    .line 54
    .line 55
    return p1
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/util/IntervalUtils;->isInitSuccess:Z

    .line 2
    .line 3
    return v0
.end method
