.class public Lcom/haima/hmcp/beans/JoyStickMappingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;,
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;,
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$InputOpConfig;,
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;,
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$DpadConfig;,
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;,
        Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "JoyStickMappingConfig"


# instance fields
.field public A:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public B:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public BACK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public DPAD:Lcom/haima/hmcp/beans/JoyStickMappingConfig$DpadConfig;

.field public LB:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public LEFT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

.field public LS:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public LT:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public MOUSE_REFRESH_RATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;",
            ">;"
        }
    .end annotation
.end field

.field public RB:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public RIGHT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

.field public RS:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public RT:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public START:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public X:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

.field public Y:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method private findJoyStickButtonByKeyboardKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    const/16 v3, 0xc

    .line 17
    .line 18
    new-array v4, v3, [Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 19
    .line 20
    iget-object v5, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->A:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    aput-object v5, v4, v6

    .line 24
    .line 25
    iget-object v5, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->B:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    aput-object v5, v4, v7

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->X:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 32
    .line 33
    aput-object v7, v4, v5

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->Y:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 37
    .line 38
    aput-object v7, v4, v5

    .line 39
    .line 40
    const/4 v5, 0x4

    .line 41
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LB:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 42
    .line 43
    aput-object v7, v4, v5

    .line 44
    .line 45
    const/4 v5, 0x5

    .line 46
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RB:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 47
    .line 48
    aput-object v7, v4, v5

    .line 49
    .line 50
    const/4 v5, 0x6

    .line 51
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LT:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 52
    .line 53
    aput-object v7, v4, v5

    .line 54
    .line 55
    const/4 v5, 0x7

    .line 56
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RT:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 57
    .line 58
    aput-object v7, v4, v5

    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->BACK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 63
    .line 64
    aput-object v7, v4, v5

    .line 65
    .line 66
    const/16 v5, 0x9

    .line 67
    .line 68
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->START:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 69
    .line 70
    aput-object v7, v4, v5

    .line 71
    .line 72
    const/16 v5, 0xa

    .line 73
    .line 74
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LS:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 75
    .line 76
    aput-object v7, v4, v5

    .line 77
    .line 78
    const/16 v5, 0xb

    .line 79
    .line 80
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RS:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 81
    .line 82
    aput-object v7, v4, v5

    .line 83
    .line 84
    const-string v8, "A"

    .line 85
    .line 86
    const-string v9, "B"

    .line 87
    .line 88
    const-string v10, "X"

    .line 89
    .line 90
    const-string v11, "Y"

    .line 91
    .line 92
    const-string v12, "LB"

    .line 93
    .line 94
    const-string v13, "RB"

    .line 95
    .line 96
    const-string v14, "LT"

    .line 97
    .line 98
    const-string v15, "RT"

    .line 99
    .line 100
    const-string v16, "BACK"

    .line 101
    .line 102
    const-string v17, "START"

    .line 103
    .line 104
    const-string v18, "LS"

    .line 105
    .line 106
    const-string v19, "RS"

    .line 107
    .line 108
    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :goto_0
    if-ge v6, v3, :cond_3

    .line 113
    .line 114
    aget-object v7, v4, v6

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    iget-object v7, v7, Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;->keyboardKey:Ljava/util/List;

    .line 119
    .line 120
    if-eqz v7, :cond_2

    .line 121
    .line 122
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_2

    .line 131
    .line 132
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_1

    .line 143
    .line 144
    aget-object v1, v5, v6

    .line 145
    .line 146
    return-object v1

    .line 147
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    :goto_1
    return-object v2
.end method

.method private findJoyStickButtonByMouseButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    const/16 v3, 0xc

    .line 17
    .line 18
    new-array v4, v3, [Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 19
    .line 20
    iget-object v5, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->A:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    aput-object v5, v4, v6

    .line 24
    .line 25
    iget-object v5, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->B:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    aput-object v5, v4, v7

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->X:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 32
    .line 33
    aput-object v7, v4, v5

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->Y:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 37
    .line 38
    aput-object v7, v4, v5

    .line 39
    .line 40
    const/4 v5, 0x4

    .line 41
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LB:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 42
    .line 43
    aput-object v7, v4, v5

    .line 44
    .line 45
    const/4 v5, 0x5

    .line 46
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RB:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 47
    .line 48
    aput-object v7, v4, v5

    .line 49
    .line 50
    const/4 v5, 0x6

    .line 51
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LT:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 52
    .line 53
    aput-object v7, v4, v5

    .line 54
    .line 55
    const/4 v5, 0x7

    .line 56
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RT:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 57
    .line 58
    aput-object v7, v4, v5

    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->BACK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 63
    .line 64
    aput-object v7, v4, v5

    .line 65
    .line 66
    const/16 v5, 0x9

    .line 67
    .line 68
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->START:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 69
    .line 70
    aput-object v7, v4, v5

    .line 71
    .line 72
    const/16 v5, 0xa

    .line 73
    .line 74
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LS:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 75
    .line 76
    aput-object v7, v4, v5

    .line 77
    .line 78
    const/16 v5, 0xb

    .line 79
    .line 80
    iget-object v7, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RS:Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;

    .line 81
    .line 82
    aput-object v7, v4, v5

    .line 83
    .line 84
    const-string v8, "A"

    .line 85
    .line 86
    const-string v9, "B"

    .line 87
    .line 88
    const-string v10, "X"

    .line 89
    .line 90
    const-string v11, "Y"

    .line 91
    .line 92
    const-string v12, "LB"

    .line 93
    .line 94
    const-string v13, "RB"

    .line 95
    .line 96
    const-string v14, "LT"

    .line 97
    .line 98
    const-string v15, "RT"

    .line 99
    .line 100
    const-string v16, "BACK"

    .line 101
    .line 102
    const-string v17, "START"

    .line 103
    .line 104
    const-string v18, "LS"

    .line 105
    .line 106
    const-string v19, "RS"

    .line 107
    .line 108
    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :goto_0
    if-ge v6, v3, :cond_2

    .line 113
    .line 114
    aget-object v7, v4, v6

    .line 115
    .line 116
    if-eqz v7, :cond_1

    .line 117
    .line 118
    iget-object v7, v7, Lcom/haima/hmcp/beans/JoyStickMappingConfig$ButtonConfig;->mouse:Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;

    .line 119
    .line 120
    if-eqz v7, :cond_1

    .line 121
    .line 122
    iget-object v7, v7, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;->button:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_1

    .line 129
    .line 130
    aget-object v1, v5, v6

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    :goto_1
    return-object v2
.end method

.method private findJoyStickByKeyboardKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LEFT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;->keyboard:Ljava/util/Map;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v3, v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;->keyboardKey:Ljava/util/List;

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v0, "LEFT_STICK:"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RIGHT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;->keyboard:Ljava/util/Map;

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    iget-object v3, v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;->keyboardKey:Ljava/util/List;

    .line 135
    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_4

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_5

    .line 159
    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v0, "RIGHT_STICK:"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    return-object p1

    .line 184
    :cond_6
    :goto_0
    return-object v0
.end method

.method private findJoyStickDpadByKeyboardKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->DPAD:Lcom/haima/hmcp/beans/JoyStickMappingConfig$DpadConfig;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DpadConfig;->keyboard:Ljava/util/Map;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget-object v3, v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;->keyboardKey:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_3
    :goto_0
    return-object v0
.end method

.method private findJoyStickStickByMouseButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LEFT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;->mouse:Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;->button:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string p1, "LEFT_STICK"

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RIGHT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;->mouse:Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;->button:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-string p1, "RIGHT_STICK"

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p0, "{\n  \"A\": { \"inputOp\": 1024, \"value\": 4096, \"keyboardKey\": [\"Space\"] },\n  \"B\": { \"inputOp\": 1024, \"value\": 8192, \"keyboardKey\": [\"ControlLeft\"] },\n  \"X\": { \"inputOp\": 1024, \"value\": 16384, \"keyboardKey\": [\"KeyF\"] },\n  \"Y\": { \"inputOp\": 1024, \"value\": 32768, \"keyboardKey\": [\"KeyR\"] },\n  \"LB\": { \"inputOp\": 1024, \"value\": 256, \"keyboardKey\": [\"KeyG\"] },\n  \"RB\": { \"inputOp\": 1024, \"value\": 512, \"keyboardKey\": [\"KeyT\"] },\n  \"LT\": { \"inputOp\": 1025, \"value\": 255, \"keyboardKey\": [\"KeyQ\"], \"mouse\": { \"button\": \"right\" } },\n  \"RT\": { \"inputOp\": 1026, \"value\": 255, \"keyboardKey\": [\"KeyE\"], \"mouse\": { \"button\": \"left\" } },\n  \"BACK\": { \"inputOp\": 1024, \"value\": 32, \"keyboardKey\": [\"Tab\"] },\n  \"START\": { \"inputOp\": 1024, \"value\": 16, \"keyboardKey\": [\"KeyL\"] },\n  \"LS\": { \"inputOp\": 1024, \"value\": 64, \"keyboardKey\": [\"ShiftLeft\"] },\n  \"RS\": { \"inputOp\": 1024, \"value\": 128, \"keyboardKey\": [\"KeyC\"], \"mouse\": { \"button\": \"middle\" } },\n  \"DPAD\": {\n    \"inputOp\": 1024,\n    \"keyboard\": {\n      \"UP\": { \"value\": 1, \"keyboardKey\": [\"Digit1\"] },\n      \"DOWN\": { \"value\": 2, \"keyboardKey\": [\"Digit2\"] },\n      \"LEFT\": { \"value\": 4, \"keyboardKey\": [\"Digit3\"] },\n      \"RIGHT\": { \"value\": 8, \"keyboardKey\": [\"Digit4\"] }\n    }\n  },\n  \"LEFT_STICK\": {\n    \"inputOp\": { \"x\": 1027, \"y\": 1028 },\n    \"keyboard\": {\n      \"UP\": { \"value\": 32767, \"keyboardKey\": [\"KeyW\"] },\n      \"DOWN\": { \"value\": -32767, \"keyboardKey\": [\"KeyS\"] },\n      \"LEFT\": { \"value\": -32767, \"keyboardKey\": [\"KeyA\"] },\n      \"RIGHT\": { \"value\": 32767, \"keyboardKey\": [\"KeyD\"] }\n    },\n    \"mouse\": { \"enabled\": false }\n  },\n  \"RIGHT_STICK\": {\n    \"inputOp\": { \"x\": 1029, \"y\": 1030 },\n    \"keyboard\": {\n      \"UP\": { \"value\": 32767, \"keyboardKey\": [\"ArrowUp\"] },\n      \"DOWN\": { \"value\": -32767, \"keyboardKey\": [\"ArrowDown\"] },\n      \"LEFT\": { \"value\": -32767, \"keyboardKey\": [\"ArrowLeft\"] },\n      \"RIGHT\": { \"value\": 32767, \"keyboardKey\": [\"ArrowRight\"] }\n    },\n    \"mouse\": { \"enabled\": true }\n  },\n  \"MOUSE_REFRESH_RATES\": [\n    { \"rate\": 2000, \"interval\": 0.5, \"detectionTime\": 1 },\n    { \"rate\": 1000, \"interval\": 1, \"detectionTime\": 2 },\n    { \"rate\": 250, \"interval\": 4, \"detectionTime\": 5 },\n    { \"rate\": 125, \"interval\": 8, \"detectionTime\": 8 },\n    { \"rate\": 0, \"interval\": 1000000, \"detectionTime\": 20 }\n  ]\n}  "

    .line 2
    .line 3
    const-class v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 12
    .line 13
    const-string v1, "=== \u53cd\u5411\u67e5\u627e\u6d4b\u8bd5 ==="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "Space"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "\u952e\u76d8\u952e \'Space\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "KeyF"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "\u952e\u76d8\u952e \'KeyF\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "Digit1"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "\u952e\u76d8\u952e \'Digit1\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v0, "Digit2"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v3, "\u952e\u76d8\u952e \'Digit2\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v0, "KeyW"

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "\u952e\u76d8\u952e \'KeyW\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "ArrowUp"

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v3, "\u952e\u76d8\u952e \'ArrowUp\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "UnknownKey"

    .line 187
    .line 188
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "\u952e\u76d8\u952e \'UnknownKey\' \u5bf9\u5e94\u624b\u67c4\u63a7\u5236: "

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method


# virtual methods
.method public findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoyStickButtonByKeyboardKey(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoyStickDpadByKeyboardKey(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoyStickByKeyboardKey(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_3
    sget-object p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "findJoystickControlByKeyboard finish, no mapping control"

    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_4
    :goto_0
    sget-object p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "findJoystickControlByKeyboard, keyName is empty"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public findJoystickControlByMouse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "findJoystickControlByMouse, mouseButton: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    sget-object p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "findJoystickControlByMouse, mouseButton is empty"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoyStickButtonByMouseButton(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-object p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "findJoystickControlByMouse, button="

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoyStickStickByMouseButton(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    sget-object v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "findJoystickControlByMouse, stick="

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_2
    return-object v1
.end method

.method public getStickEnabled()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LEFT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RIGHT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->RIGHT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;->mouse:Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;->enabled:Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "RIGHT_STICK"

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->LEFT_STICK:Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;->mouse:Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;->enabled:Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string v0, "LEFT_STICK"

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    return-object v1
.end method

.method public isMouseConfigured()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->getStickEnabled()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public sortMouseRefreshRatesByIntervalAsc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->MOUSE_REFRESH_RATES:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->MOUSE_REFRESH_RATES:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig$1;-><init>(Lcom/haima/hmcp/beans/JoyStickMappingConfig;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
