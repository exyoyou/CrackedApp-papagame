.class public Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TIME_OUT:[Ljava/lang/Integer;

.field public static final DISABLE:I = 0x0

.field public static final ENABLE:I = 0x1

.field public static final TIME_OUT_COUNTS_LIMIT:I = -0x1

.field public static final TIME_OUT_MIN:I = 0x3e8


# instance fields
.field private enable:I

.field private timeout:[Ljava/lang/Integer;

.field private timeoutIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Integer;

    .line 3
    .line 4
    const/16 v1, 0xbb8

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sput-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->DEFAULT_TIME_OUT:[Ljava/lang/Integer;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeoutIndex:I

    .line 6
    .line 7
    iput v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->enable:I

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->DEFAULT_TIME_OUT:[Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->setTimeout([Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getTimeout()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeout:[Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeoutIndex:I

    .line 11
    .line 12
    array-length v3, v0

    .line 13
    if-lt v2, v3, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 17
    .line 18
    iput v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeoutIndex:I

    .line 19
    .line 20
    aget-object v0, v0, v2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public isEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->enable:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeoutIndex:I

    .line 3
    .line 4
    return-void
.end method

.method public setEnable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->enable:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimeout([Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->reset()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeout:[Ljava/lang/Integer;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    sget-object p1, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->DEFAULT_TIME_OUT:[Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeout:[Ljava/lang/Integer;

    .line 16
    .line 17
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HmScreenMonitorConfig{enable="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->enable:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", timeout="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeout:[Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", timeoutIndex="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->timeoutIndex:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x7d

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
