.class public Lcom/haima/hmcp/beans/ButtonMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buttonA:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonAB:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonB:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonCenter:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonDown:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonFn:I

.field public buttonL1:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonL2:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum0:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum1:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum2:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum3:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum4:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum5:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum6:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum7:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum8:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonNum9:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonR1:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonR2:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonRight:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonUp:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonX:Lcom/haima/hmcp/beans/PointCoord;

.field public buttonY:Lcom/haima/hmcp/beans/PointCoord;

.field public imageURL:Ljava/lang/String;

.field public mappingName:Ljava/lang/String;

.field public trackBallL:Lcom/haima/hmcp/beans/PointCoord;

.field public trackBallR:Lcom/haima/hmcp/beans/PointCoord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mappingName = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/ButtonMappings;->mappingName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonX:Lcom/haima/hmcp/beans/PointCoord;

    .line 21
    .line 22
    const-string v2, ")"

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ":buttonX = ("

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonX:Lcom/haima/hmcp/beans/PointCoord;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/PointCoord;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonA:Lcom/haima/hmcp/beans/PointCoord;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ":buttonA = ("

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonA:Lcom/haima/hmcp/beans/PointCoord;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/PointCoord;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum0:Lcom/haima/hmcp/beans/PointCoord;

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ":buttonNum0 = ("

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum0:Lcom/haima/hmcp/beans/PointCoord;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/PointCoord;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :cond_2
    return-object v0
.end method
