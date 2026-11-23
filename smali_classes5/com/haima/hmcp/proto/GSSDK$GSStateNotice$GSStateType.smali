.class public final enum Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$GSStateNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GSStateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final enum CAPITAL_STATE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final CAPITAL_STATE_VALUE:I = 0x1

.field public static final enum CUT_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final CUT_VIRTUAL_GAME_PAD_VALUE:I = 0x3

.field public static final enum GAMEPAD_MODE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final GAMEPAD_MODE_VALUE:I = 0x9

.field public static final enum GAME_START:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final GAME_START_VALUE:I = 0x7

.field public static final enum GAME_STOP:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final GAME_STOP_VALUE:I = 0x8

.field public static final enum GAME_WND_RESIZE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final GAME_WND_RESIZE_VALUE:I = 0x6

.field public static final enum KEYBOARD_STYLE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final KEYBOARD_STYLE_VALUE:I = 0x2

.field public static final enum LINKED_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final LINKED_VIRTUAL_GAME_PAD_VALUE:I = 0x4

.field public static final enum MAIN_CONTEXT_QUIT:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field public static final MAIN_CONTEXT_QUIT_VALUE:I = 0x5

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 2
    .line 3
    const-string v1, "CAPITAL_STATE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->CAPITAL_STATE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 13
    .line 14
    const-string v4, "KEYBOARD_STYLE"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->KEYBOARD_STYLE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 21
    .line 22
    new-instance v4, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 23
    .line 24
    const-string v6, "CUT_VIRTUAL_GAME_PAD"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->CUT_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 31
    .line 32
    new-instance v6, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 33
    .line 34
    const-string v8, "LINKED_VIRTUAL_GAME_PAD"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->LINKED_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 41
    .line 42
    new-instance v8, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 43
    .line 44
    const-string v10, "MAIN_CONTEXT_QUIT"

    .line 45
    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v8, v10, v9, v11}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v8, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->MAIN_CONTEXT_QUIT:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 51
    .line 52
    new-instance v10, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 53
    .line 54
    const-string v12, "GAME_WND_RESIZE"

    .line 55
    .line 56
    const/4 v13, 0x6

    .line 57
    invoke-direct {v10, v12, v11, v13}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v10, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAME_WND_RESIZE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 61
    .line 62
    new-instance v12, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 63
    .line 64
    const-string v14, "GAME_START"

    .line 65
    .line 66
    const/4 v15, 0x7

    .line 67
    invoke-direct {v12, v14, v13, v15}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v12, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAME_START:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 71
    .line 72
    new-instance v14, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 73
    .line 74
    const-string v13, "GAME_STOP"

    .line 75
    .line 76
    const/16 v11, 0x8

    .line 77
    .line 78
    invoke-direct {v14, v13, v15, v11}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAME_STOP:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 82
    .line 83
    new-instance v13, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 84
    .line 85
    const-string v15, "GAMEPAD_MODE"

    .line 86
    .line 87
    const/16 v9, 0x9

    .line 88
    .line 89
    invoke-direct {v13, v15, v11, v9}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v13, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAMEPAD_MODE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 93
    .line 94
    new-array v9, v9, [Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 95
    .line 96
    aput-object v0, v9, v2

    .line 97
    .line 98
    aput-object v1, v9, v3

    .line 99
    .line 100
    aput-object v4, v9, v5

    .line 101
    .line 102
    aput-object v6, v9, v7

    .line 103
    .line 104
    const/4 v0, 0x4

    .line 105
    aput-object v8, v9, v0

    .line 106
    .line 107
    const/4 v0, 0x5

    .line 108
    aput-object v10, v9, v0

    .line 109
    .line 110
    const/4 v0, 0x6

    .line 111
    aput-object v12, v9, v0

    .line 112
    .line 113
    const/4 v0, 0x7

    .line 114
    aput-object v14, v9, v0

    .line 115
    .line 116
    aput-object v13, v9, v11

    .line 117
    .line 118
    sput-object v9, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 119
    .line 120
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType$1;

    .line 121
    .line 122
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType$1;-><init>()V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 126
    .line 127
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->values()[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 132
    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAMEPAD_MODE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAME_STOP:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAME_START:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->GAME_WND_RESIZE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->MAIN_CONTEXT_QUIT:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->LINKED_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->CUT_VIRTUAL_GAME_PAD:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->KEYBOARD_STYLE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->CAPITAL_STATE:Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSStateNotice$GSStateType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 18
    .line 19
    return-object v0
.end method
