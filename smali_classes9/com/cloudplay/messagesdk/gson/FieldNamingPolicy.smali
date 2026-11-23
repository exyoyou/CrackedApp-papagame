.class public abstract enum Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/cloudplay/messagesdk/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

.field public static final enum b:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

.field public static final enum c:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

.field public static final enum d:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

.field public static final enum e:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

.field public static final enum f:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

.field private static final synthetic g:[Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$1;

    .line 2
    .line 3
    const-string v1, "IDENTITY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->a:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 10
    .line 11
    new-instance v1, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$2;

    .line 12
    .line 13
    const-string v3, "UPPER_CAMEL_CASE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->b:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 20
    .line 21
    new-instance v3, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$3;

    .line 22
    .line 23
    const-string v5, "UPPER_CAMEL_CASE_WITH_SPACES"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->c:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 30
    .line 31
    new-instance v5, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$4;

    .line 32
    .line 33
    const-string v7, "LOWER_CASE_WITH_UNDERSCORES"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->d:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 40
    .line 41
    new-instance v7, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$5;

    .line 42
    .line 43
    const-string v9, "LOWER_CASE_WITH_DASHES"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->e:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 50
    .line 51
    new-instance v9, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$6;

    .line 52
    .line 53
    const-string v11, "LOWER_CASE_WITH_DOTS"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->f:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->g:[Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 77
    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/cloudplay/messagesdk/gson/FieldNamingPolicy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-ge v3, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    .line 12
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-nez v3, :cond_2

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->g:[Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 8
    .line 9
    return-object v0
.end method
