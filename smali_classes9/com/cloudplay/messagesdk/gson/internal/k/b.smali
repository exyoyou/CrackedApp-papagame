.class public abstract Lcom/cloudplay/messagesdk/gson/internal/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/cloudplay/messagesdk/gson/internal/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloudplay/messagesdk/gson/internal/d;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/k/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/k/a;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/k/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/k/c;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/k/b;->a:Lcom/cloudplay/messagesdk/gson/internal/k/b;

    .line 21
    .line 22
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

.method public static a()Lcom/cloudplay/messagesdk/gson/internal/k/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/internal/k/b;->a:Lcom/cloudplay/messagesdk/gson/internal/k/b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/AccessibleObject;)V
.end method
