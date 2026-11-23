.class public final enum Lcom/join/mgps/enums/Dtype;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/enums/Dtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/enums/Dtype;

.field public static final enum CLOUD:Lcom/join/mgps/enums/Dtype;

.field public static final enum H5:Lcom/join/mgps/enums/Dtype;

.field public static final enum MOD:Lcom/join/mgps/enums/Dtype;

.field public static final enum android:Lcom/join/mgps/enums/Dtype;

.field public static final enum androiddata:Lcom/join/mgps/enums/Dtype;

.field public static final enum androidobb:Lcom/join/mgps/enums/Dtype;

.field public static final enum androidobbdata:Lcom/join/mgps/enums/Dtype;

.field public static final enum apk:Lcom/join/mgps/enums/Dtype;

.field public static final enum chajian:Lcom/join/mgps/enums/Dtype;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/enums/Dtype;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lcom/join/mgps/enums/Dtype;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/join/mgps/enums/Dtype;->H5:Lcom/join/mgps/enums/Dtype;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/join/mgps/enums/Dtype;->CLOUD:Lcom/join/mgps/enums/Dtype;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 2
    .line 3
    const-string v1, "apk"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 12
    .line 13
    const-string v1, "chajian"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 22
    .line 23
    const-string v1, "android"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 32
    .line 33
    const-string v1, "androidobb"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 40
    .line 41
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 42
    .line 43
    const-string v1, "androiddata"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 50
    .line 51
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 52
    .line 53
    const-string v1, "H5"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/join/mgps/enums/Dtype;->H5:Lcom/join/mgps/enums/Dtype;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 62
    .line 63
    const-string v1, "androidobbdata"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 70
    .line 71
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 72
    .line 73
    const-string v1, "MOD"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 80
    .line 81
    new-instance v0, Lcom/join/mgps/enums/Dtype;

    .line 82
    .line 83
    const-string v1, "CLOUD"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/enums/Dtype;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/join/mgps/enums/Dtype;->CLOUD:Lcom/join/mgps/enums/Dtype;

    .line 91
    .line 92
    invoke-static {}, Lcom/join/mgps/enums/Dtype;->$values()[Lcom/join/mgps/enums/Dtype;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/join/mgps/enums/Dtype;->$VALUES:[Lcom/join/mgps/enums/Dtype;

    .line 97
    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/enums/Dtype;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/join/mgps/enums/Dtype;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/enums/Dtype;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/enums/Dtype;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->$VALUES:[Lcom/join/mgps/enums/Dtype;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/enums/Dtype;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/enums/Dtype;

    .line 8
    .line 9
    return-object v0
.end method
