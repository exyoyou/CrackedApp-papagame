.class public final enum Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

.field public static final enum MEMBER_HEADER:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

.field public static final enum MEMBER_ITEM:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

.field public static final enum MEMBER_MODERATORS:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

.field public static final enum MEMBER_MY:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_HEADER:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_ITEM:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_MODERATORS:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_MY:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 2
    .line 3
    const-string v1, "MEMBER_HEADER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_HEADER:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 12
    .line 13
    const-string v1, "MEMBER_ITEM"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_ITEM:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 22
    .line 23
    const-string v1, "MEMBER_MODERATORS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_MODERATORS:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 32
    .line 33
    const-string v1, "MEMBER_MY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_MY:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->$values()[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 46
    .line 47
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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;
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
    const-class v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    .line 8
    .line 9
    return-object v0
.end method
