.class Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/util/IntervalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntervalInfo"
.end annotation


# instance fields
.field private intervalTime:I

.field private useTime:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->useTime:I

    .line 6
    .line 7
    iput v0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->intervalTime:I

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, ","

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    array-length v0, p1

    .line 24
    const/4 v1, 0x1

    .line 25
    if-le v0, v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :try_start_0
    aget-object v0, p1, v0

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->useTime:I

    .line 35
    .line 36
    aget-object p1, p1, v1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->intervalTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->useTime:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->intervalTime:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;

    .line 6
    .line 7
    iget p1, p1, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->useTime:I

    .line 8
    .line 9
    iget v0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->useTime:I

    .line 10
    .line 11
    sub-int/2addr p1, v0

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public isVaild()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->useTime:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/webrtc/haima/util/IntervalUtils$IntervalInfo;->intervalTime:I

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method
