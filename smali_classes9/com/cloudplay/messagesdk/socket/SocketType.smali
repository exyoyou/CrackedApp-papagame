.class public final enum Lcom/cloudplay/messagesdk/socket/SocketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloudplay/messagesdk/socket/SocketType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cloudplay/messagesdk/socket/SocketType;

.field public static final enum b:Lcom/cloudplay/messagesdk/socket/SocketType;

.field public static final enum c:Lcom/cloudplay/messagesdk/socket/SocketType;

.field private static final synthetic d:[Lcom/cloudplay/messagesdk/socket/SocketType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 2
    .line 3
    const-string v1, "LINK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/cloudplay/messagesdk/socket/SocketType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 11
    .line 12
    new-instance v1, Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 13
    .line 14
    const-string v4, "WS_SERVER"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/cloudplay/messagesdk/socket/SocketType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 21
    .line 22
    new-instance v4, Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 23
    .line 24
    const-string v6, "LINK_WS_SERVER"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/cloudplay/messagesdk/socket/SocketType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/cloudplay/messagesdk/socket/SocketType;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 31
    .line 32
    new-array v6, v7, [Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 33
    .line 34
    aput-object v0, v6, v2

    .line 35
    .line 36
    aput-object v1, v6, v3

    .line 37
    .line 38
    aput-object v4, v6, v5

    .line 39
    .line 40
    sput-object v6, Lcom/cloudplay/messagesdk/socket/SocketType;->d:[Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 41
    .line 42
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
    iput p3, p0, Lcom/cloudplay/messagesdk/socket/SocketType;->mType:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/cloudplay/messagesdk/socket/SocketType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/cloudplay/messagesdk/socket/SocketType;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloudplay/messagesdk/socket/SocketType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloudplay/messagesdk/socket/SocketType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->d:[Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloudplay/messagesdk/socket/SocketType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/SocketType;->mType:I

    return v0
.end method
