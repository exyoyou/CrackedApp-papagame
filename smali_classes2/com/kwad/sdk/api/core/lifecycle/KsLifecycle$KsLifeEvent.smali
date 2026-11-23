.class public final enum Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KsLifeEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_ANY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_CREATE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_DESTROY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_PAUSE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_RESUME:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_START:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_STOP:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;


# instance fields
.field mRealValue:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    .line 5
    const-string v2, "ON_CREATE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_CREATE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 14
    .line 15
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 16
    .line 17
    const-string v4, "ON_START"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_START:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 24
    .line 25
    new-instance v2, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 26
    .line 27
    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 28
    .line 29
    const-string v6, "ON_RESUME"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_RESUME:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 36
    .line 37
    new-instance v4, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 38
    .line 39
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 40
    .line 41
    const-string v8, "ON_PAUSE"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_PAUSE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 48
    .line 49
    new-instance v6, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 50
    .line 51
    sget-object v8, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 52
    .line 53
    const-string v10, "ON_STOP"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_STOP:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 60
    .line 61
    new-instance v8, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 62
    .line 63
    sget-object v10, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 64
    .line 65
    const-string v12, "ON_DESTROY"

    .line 66
    .line 67
    const/4 v13, 0x5

    .line 68
    invoke-direct {v8, v12, v13, v10}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 69
    .line 70
    .line 71
    sput-object v8, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_DESTROY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 72
    .line 73
    new-instance v10, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 74
    .line 75
    sget-object v12, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    .line 76
    .line 77
    const-string v14, "ON_ANY"

    .line 78
    .line 79
    const/4 v15, 0x6

    .line 80
    invoke-direct {v10, v14, v15, v12}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    .line 81
    .line 82
    .line 83
    sput-object v10, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_ANY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 84
    .line 85
    const/4 v12, 0x7

    .line 86
    new-array v12, v12, [Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 87
    .line 88
    aput-object v0, v12, v3

    .line 89
    .line 90
    aput-object v1, v12, v5

    .line 91
    .line 92
    aput-object v2, v12, v7

    .line 93
    .line 94
    aput-object v4, v12, v9

    .line 95
    .line 96
    aput-object v6, v12, v11

    .line 97
    .line 98
    aput-object v8, v12, v13

    .line 99
    .line 100
    aput-object v10, v12, v15

    .line 101
    .line 102
    sput-object v12, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->$VALUES:[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 103
    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->mRealValue:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    .line 6
    return-void
.end method

.method public static createfrom(Landroidx/lifecycle/Lifecycle$Event;)Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    .locals 5

    .line 1
    invoke-static {}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->values()[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->getReal()Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->$VALUES:[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getReal()Landroidx/lifecycle/Lifecycle$Event;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->mRealValue:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    .line 3
    return-object v0
.end method
